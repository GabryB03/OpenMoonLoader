local funclist =
{ 
    {"CX2TitleManager", "AddTitleInfo_LUA"}
}

for k, v in pairs(funclist) do
    local func = _G
    local enclosing = nil
    local enclosingKey = nil
    
    for meh, fname in ipairs(v) do
        enclosing = func
        enclosingKey = fname
        func = func[fname]
    end
    
    enclosing[enclosingKey] = function(...)
        local arrArgs = {...}
        print("[" .. os.date('%Y-%m-%d %H:%M:%S') .. "] Called " .. tostring(v[1]) .. "." .. tostring(enclosingKey) .. ". In function parameters count: " .. tostring(#arrArgs) .. ".")
        return func(...)
    end
end

print("[!] Injected.")