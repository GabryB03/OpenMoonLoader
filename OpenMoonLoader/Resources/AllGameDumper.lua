local f = io.open("_GameDump.txt", "wb")

local function printTable(t)
    local printTable_cache = {}
	
    local function sub_printTable(t, indent)
        if (printTable_cache[tostring(t)]) then
            f:write("\n", indent .. "*" .. tostring(t))
        else
            printTable_cache[tostring(t)] = true
			
            if (type(t) == "table") then
                for pos,val in pairs(t) do
                    if (type(val) == "table") then
                        f:write("\n", indent.. "[" .. pos .. "] => ", tostring(t), "\n", indent .. "{")
                        sub_printTable(val, indent .. string.rep( " ", string.len(pos) + 3))
                        f:write("\n", indent .. "}" )
                    elseif (type(val) == "string" ) then
                        f:write("\n", indent ..  "[" .. pos .. '] => "' .. val .. '"')
                    else
                        f:write("\n", indent .. "[" .. pos .. "] => " .. tostring(val))
                    end
                end
            else
                f:write("\n",indent .. tostring(t))
            end
        end
    end
    if (type(t) == "table") then
        f:write(tostring(t) .. "  {")
        sub_printTable(t, "  ")
        f:write("\n}")
    else
        sub_printTable(t, "  ")
    end
end


for k, v in pairs(_G) do
    if type(v) == "table" or type(v) == "function" or type(v) == "userdata" then
		f:write("\n\n",k .. "=" .. tostring(v) .. "\r\n")
	end
	
    if type(v) == "table" then
		printTable(v)
	end
	
    if type(v) == "userdata" then 
        f:write("{\n")
		
        for l, m in pairs(getmetatable(v)) do
            f:write("   " .. "[" .. l .. "] => " .. tostring(m) .. "\n")
        end
		
        f:write("}\n")
    end
end