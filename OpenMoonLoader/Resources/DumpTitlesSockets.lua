local f = io.open("_sockets.txt", "wb")

local function contains(table, val)
   for i = 1, #table do
      if table[i] == val then 
         return true
      end
   end
   return false
end

local currentIndex = 1
local sockets = {}
local first = true

local originalfunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)
    if data then
        if data.SOCKET_OPTION then
			if #data.SOCKET_OPTION > 0 then
				for k, v in pairs(data.SOCKET_OPTION) do
					if not contains(sockets, v) then
						if first then
							f:write(tostring(v) .. ",")
						else
							f:write("\r\n" .. tostring(v) .. ",")
						end
						sockets[currentIndex] = v
						currentIndex = currentIndex + 1
					end
				end
			end
		end
    end
    return originalfunc(self, data)
end