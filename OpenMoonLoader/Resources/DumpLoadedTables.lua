local f = io.open("_tables.txt", "wb")

for k, v in pairs(_G) do

	if type(v) == "table" then
	
		f:write(tostring(k) .. "\r\n")
		f:flush()
		
	end

end

f:close()