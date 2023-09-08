#define WIN32_LEAN_AND_MEAN

#include <windows.h>
#include <MinHook.h>
#include <fstream>
#include <sstream>
#include <vector>
#include <thread>

#if _WIN64 
#pragma comment(lib, "libMinHook.x64.lib")
#else
#pragma comment(lib, "libMinHook.x86.lib")
#endif

typedef void* lua_State;
bool canDump = false, isLuaLoaded = false;
int fileCount = 1;
lua_State* theLuaState;

BYTE* FindPatternPointerAddress(DWORD pid, const void* data, size_t len)
{
    HANDLE process = OpenProcess(PROCESS_VM_READ | PROCESS_QUERY_INFORMATION, FALSE, pid);

    if (process)
    {
        SYSTEM_INFO si;
        GetSystemInfo(&si);
        MEMORY_BASIC_INFORMATION info;
        std::vector<char> chunk;
        BYTE* p = 0;

        while (p < si.lpMaximumApplicationAddress)
        {
            if (VirtualQueryEx(process, p, &info, sizeof(info)) == sizeof(info))
            {
                p = (BYTE*)info.BaseAddress;
                chunk.resize(info.RegionSize);
                SIZE_T bytesRead;

                if (ReadProcessMemory(process, p, &chunk[0], info.RegionSize, &bytesRead))
                {
                    for (size_t i = 0; i < (bytesRead - len); ++i)
                    {
                        if (memcmp(data, &chunk[i], len) == 0 && (void*)(p + i) != (void*)data)
                        {
                            return (BYTE*)p + i;
                        }
                    }
                }

                p += info.RegionSize;
            }
        }

        CloseHandle(process);
    }

    return 0;
}

uintptr_t GetCalledFunctionOfPointer(void* address)
{
    void (*functionPtr)() = reinterpret_cast<void (*)()>(address);
    unsigned char* bytePtr = reinterpret_cast<unsigned char*>(functionPtr);
    uintptr_t mask = 0xFFFFFFFF;
    uintptr_t callTargetOffset = *reinterpret_cast<uintptr_t*>(bytePtr + 1);
    uintptr_t callTargetAddress = (reinterpret_cast<uintptr_t>(bytePtr) + 5 + callTargetOffset) & mask;
    return callTargetAddress;
}

const BYTE loadBufferPattern[] = { 0xE8, 0x6F, 0x38, 0xFD, 0xFF };
const BYTE pcallPattern[] = { 0xE8, 0x3B, 0xA3, 0xFB, 0xFF };

uintptr_t luaL_loadbufferAddress = GetCalledFunctionOfPointer(FindPatternPointerAddress(GetCurrentProcessId(), loadBufferPattern, sizeof(loadBufferPattern)));
uintptr_t luaL_pcallAddress = GetCalledFunctionOfPointer(FindPatternPointerAddress(GetCurrentProcessId(), pcallPattern, sizeof(pcallPattern)));

typedef int (*luaL_pcall)(lua_State* L, int nargs, int nresults, int errfunc);
luaL_pcall luaL_pcall_after = reinterpret_cast<luaL_pcall>(luaL_pcallAddress);

typedef int(*luaL_loadbuffer)(lua_State* L, const char* buff, size_t sz, const char* name);
luaL_loadbuffer luaL_loadbuffer_before = nullptr;
luaL_loadbuffer luaL_loadbuffer_after = reinterpret_cast<luaL_loadbuffer>(luaL_loadbufferAddress);

int __cdecl luaL_loadbuffer_hook(lua_State* L, const char* buff, size_t sz, const char* description)
{
    if (!isLuaLoaded)
    {
        isLuaLoaded = true;
        theLuaState = L;
    }

    if (canDump)
    {
        std::ofstream outfile("C:\\Elsword Lua Dumps\\" + std::to_string(fileCount) + ".luac", std::ofstream::binary);
        outfile.write(buff, sz);
        outfile.close();
        fileCount = fileCount + 1;
    }

    return luaL_loadbuffer_before(L, buff, sz, description);
}

bool FileExists(const std::string& name)
{
    struct stat buffer;
    return (stat(name.c_str(), &buffer) == 0);
}

DWORD WINAPI Menue(HINSTANCE hModule)
{
    if (MH_Initialize() != MH_OK)
    {
        return 0;
    }

    if (MH_CreateHook(reinterpret_cast<void**>(luaL_loadbuffer_after), &luaL_loadbuffer_hook, reinterpret_cast<void**>(&luaL_loadbuffer_before)) != MH_OK)
    {
        return 0;
    }

    if (MH_EnableHook(reinterpret_cast<void**>(luaL_loadbuffer_after)) != MH_OK)
    {
        return 0;
    }

    while (true)
    {
        std::this_thread::sleep_for(std::chrono::milliseconds(1));

        if (FileExists("C:\\Script.out") && isLuaLoaded)
        {
            std::ifstream infile("C:\\Script.out", std::ofstream::binary);
            infile.seekg(0, infile.end);
            size_t size = infile.tellg();
            infile.seekg(0);
            char* buffer = new char[size];
            infile.read(buffer, size);
            infile.close();
            luaL_loadbuffer_before(theLuaState, buffer, size, "") || luaL_pcall_after(theLuaState, 0, 0, 0);
            remove("C:\\script.out");
        }

        if (FileExists("C:\\start_dumping.data"))
        {
            remove("C:\\start_dumping.data");
            canDump = true;
        }

        if (FileExists("C:\\stop_dumping.data"))
        {
            remove("C:\\stop_dumping.data");
            canDump = false;
        }
    }

    return 0;
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved)
{
    switch (ul_reason_for_call)
    {
        case DLL_PROCESS_ATTACH:
            CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)Menue, NULL, 0, NULL);
            break;
    }

    return TRUE;
}