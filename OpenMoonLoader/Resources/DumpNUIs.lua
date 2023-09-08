local f = io.open("_NUI.txt", "wb")

for k, v in pairs(NPC_UNIT_ID) do

	f:write(k .. " = " .. tostring(v) .. "\r\n")
	
end

f:close()