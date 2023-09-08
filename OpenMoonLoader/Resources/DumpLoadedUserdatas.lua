local f = io.open("_userdatas.txt", "wb")

for k, v in pairs(_G) do

	if type(v) == "userdata" then
	
		f:write(tostring(k) .. "\r\n")
		f:flush()
		
	end

end

f:close()