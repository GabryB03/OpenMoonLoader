local f = io.open("_funcs.txt", "wb")

for k, v in pairs(_G) do

	if type(v) == "function" then
	
		f:write(tostring(k) .. "\r\n")
		f:flush()
		
	end

end

f:close()