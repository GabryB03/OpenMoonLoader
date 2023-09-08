local fileWrite = io.open("_Arguments.txt", "wb")

local functions =
{
	CX2TitleManager.AddTitleInfo_LUA
	CX2DungeonStage.StartGoEffect
}

for k, v in pairs(functions) do

	fileWrite:write("==============================")
	
	if type(v) == "function" then
	
		local newFunc = function(...)
		
			arrArgs = {...}
			
			for k1, v1 in pairs(arrArgs) do
			
				fileWrite:write("Argument: " .. tostring(v1) .. "\r\n")
				
			end
			
			return realfunction(...)
		end
		
		fileWrite:write("==============================")
		v = newFunc
	end
	
end