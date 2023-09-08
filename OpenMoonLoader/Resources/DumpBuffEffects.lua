local f = io.open("_BUFF.txt", "wb")

for k, v in pairs(BUFF_TEMPLET_ID) do

	f:write(k .. " = " .. tostring(v) .. "\r\n")
	
end

f:close()