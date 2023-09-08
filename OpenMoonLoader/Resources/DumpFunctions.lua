local f = io.open("_functions.txt", "wb")

for k, v in pairs(_G) do

	if type(v) == "table" then
	
		for k2, v2 in pairs(v) do
		
			if type(v2) == "function" then
			
				f:write(tostring(k) .. "." .. tostring(k2) .. "\r\n")
				
			end
			
		end
		
	end
	
end

f:close()