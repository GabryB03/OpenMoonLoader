using System.Diagnostics;
using System;
using System.IO;
using System.Threading;
using System.Runtime.InteropServices;
using System.Text;

public static class Utils
{
    public static int ElswordProcessID = -1;
    public static string DataFolder = "";
    public static Process cmd;
    public static bool isDumping = false;

    [DllImport("kernel32.dll")]
    private static extern IntPtr OpenProcess(int dwDesiredAccess, bool bInheritHandle, int dwProcessId);

    [DllImport("kernel32.dll", CharSet = CharSet.Auto)]
    private static extern IntPtr GetModuleHandle(string lpModuleName);

    [DllImport("kernel32", CharSet = CharSet.Ansi, ExactSpelling = true, SetLastError = true)]
    private static extern IntPtr GetProcAddress(IntPtr hModule, string procName);

    [DllImport("kernel32.dll", SetLastError = true, ExactSpelling = true)]
    private static extern IntPtr VirtualAllocEx(IntPtr hProcess, IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);

    [DllImport("kernel32.dll", SetLastError = true)]
    private static extern bool WriteProcessMemory(IntPtr hProcess, IntPtr lpBaseAddress, byte[] lpBuffer, uint nSize, out UIntPtr lpNumberOfBytesWritten);

    [DllImport("kernel32.dll")]
    private static extern IntPtr CreateRemoteThread(IntPtr hProcess, IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);

    const int PROCESS_CREATE_THREAD = 0x0002;
    const int PROCESS_QUERY_INFORMATION = 0x0400;
    const int PROCESS_VM_OPERATION = 0x0008;
    const int PROCESS_VM_WRITE = 0x0020;
    const int PROCESS_VM_READ = 0x0010;
    const uint MEM_COMMIT = 0x00001000;
    const uint MEM_RESERVE = 0x00002000;
    const uint PAGE_READWRITE = 4;

    public static void InitializeLua()
    {
        if (File.Exists("C:\\Script.out"))
        {
            File.Delete("C:\\Script.out");
        }

        if (File.Exists("LuaJIT\\Script.out"))
        {
            File.Delete("LuaJIT\\Script.out");
        }

        if (File.Exists("LuaJIT\\Script.lua"))
        {
            File.Delete("LuaJIT\\Script.lua");
        }

        if (Directory.Exists("C:\\Elsword Lua Dumps"))
        {
            Directory.Delete("C:\\Elsword Lua Dumps", true);
        }

        if (!Directory.Exists("C:\\Elsword Lua Dumps"))
        {
            Directory.CreateDirectory("C:\\Elsword Lua Dumps");
        }

        cmd = new Process();
        cmd.StartInfo.FileName = "cmd.exe";
        cmd.StartInfo.RedirectStandardInput = true;
        cmd.StartInfo.RedirectStandardOutput = true;
        cmd.StartInfo.CreateNoWindow = true;
        cmd.StartInfo.UseShellExecute = false;
        cmd.StartInfo.WorkingDirectory = Path.GetFullPath("LuaJIT");
        cmd.Start();
        cmd.StandardInput.WriteLine("LuaJIT-For-Windows.cmd");
    }

    public static void ExecuteLua(string luaCode)
    {
        while (File.Exists("C:\\Script.out"))
        {
            Thread.Sleep(1);
        }

        File.WriteAllText("LuaJIT\\Script.lua", luaCode);
        cmd.StandardInput.WriteLine("luajit -b Script.lua Script.out");

        while (!File.Exists("LuaJIT\\Script.out"))
        {
            Thread.Sleep(1);
        }

        File.Move("LuaJIT\\Script.out", "C:\\Script.out");
    }

    public static void StartDumping()
    {
        while (File.Exists("C:\\start_dumping.data"))
        {
            Thread.Sleep(1);
        }

        File.Create("C:\\start_dumping.data");
    }

    public static void StopDumping()
    {
        while (File.Exists("C:\\stop_dumping.data"))
        {
            Thread.Sleep(1);
        }

        File.Create("C:\\stop_dumping.data");
    }

    public static void InjectDLL(int processId, string dllPath)
    {
        IntPtr procHandle = OpenProcess(PROCESS_CREATE_THREAD | PROCESS_QUERY_INFORMATION | PROCESS_VM_OPERATION | PROCESS_VM_WRITE | PROCESS_VM_READ, false, processId);
        IntPtr loadLibraryAddr = GetProcAddress(GetModuleHandle("kernel32.dll"), "LoadLibraryA");
        IntPtr allocMemAddress = VirtualAllocEx(procHandle, IntPtr.Zero, (uint)((dllPath.Length + 1) * Marshal.SizeOf(typeof(char))), MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        UIntPtr bytesWritten;
        WriteProcessMemory(procHandle, allocMemAddress, Encoding.Default.GetBytes(dllPath), (uint)((dllPath.Length + 1) * Marshal.SizeOf(typeof(char))), out bytesWritten);
        CreateRemoteThread(procHandle, IntPtr.Zero, 0, loadLibraryAddr, allocMemAddress, 0, IntPtr.Zero);
    }
}