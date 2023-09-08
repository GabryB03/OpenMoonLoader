local f = io.open("_dungeons.txt", "wb")

for k, v in pairs(DUNGEON_ID) do

	f:write(k .. " = " .. tostring(v) .. "\r\n")
	
end

f:close()