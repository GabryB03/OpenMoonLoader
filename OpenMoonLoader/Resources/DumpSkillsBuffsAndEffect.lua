local f = io.open("_SkillsEditDetails.txt", "wb")
local f2 = io.open("_SkillsEdit.txt", "wb")

local function printTable(t)
	local printTable_cache = {}
	
	local function sub_printTable(t, indent)
		if (printTable_cache[tostring(t)]) then
			f:write("\n",indent .. "*" .. tostring(t))
		else
			printTable_cache[tostring(t)] = true
			
			if (type( t ) == "table") then
				for pos, val in pairs(t) do
					if (type(val) == "table") then
						f:write("\n", indent.. "[" .. pos .. "] => ", tostring(t), "\n", indent .. "{")
						sub_printTable(val, indent .. string.rep( " ", string.len(pos) + 3))
						f:write("\n", indent .. "}" )
					elseif (type(val) == "string") then
						f:write("\n", indent ..  "[" .. pos .. '] => "' .. val .. '"')
					else
						f:write("\n", indent .. "[" .. pos .. "] => " .. tostring(val))
					end
				end
			else
				f:write("\n", indent .. tostring(t))
			end
		end
	end
	if ( type(t) == "table" ) then
		f:write(tostring(t) .. "  {")
		sub_printTable(t, "  ")
		f:write("\n}\n")
	else
		sub_printTable(t, "  ")
	end
end

for k, v in pairs(_G) do
	if type(v) == "table" then 
		if _G[k]["BUFF_FACTOR_ID_AND_APPLY_TIME"] or _G[k]["BUFF_FACTOR_ID_AND_APPLY_TIME_ULTIMATE"] or _G[k]["EFFECT_SET_LIST_EX"] or _G[k]["EFFECT_SET_LIST_FINAL"] or _G[k]["EFFECT_SET_LIST_FINAL_ULTIMATE"] or _G[k]["EFFECT_SET_LIST"] then 
			f:write(k .. "\r\n") 
			f2:write(k .. "\r\n") 
			printTable(v)
			f:write("\r\n")
		end
	end
end

f:close()
f2:close()