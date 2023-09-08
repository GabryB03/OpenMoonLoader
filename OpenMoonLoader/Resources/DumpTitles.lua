local f = io.open("_titles.txt", "wb")
local titleDatas = {}
local titleIndex = 0
local transTitleIndex = 0

local originalfunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)
    if data then
        titleDatas[titleIndex] = data
        titleIndex = titleIndex + 1
    end
    return originalfunc(self, data)
end

local otherOriginalFunc = CX2TitleManager.AddTitleInfoTrans_LUA
CX2TitleManager.AddTitleInfoTrans_LUA = function(self, data)
    if data then
        local dataTitle = titleDatas[transTitleIndex]
        transTitleIndex = transTitleIndex + 1
        f:write("\r\n========================================\r\n" .. "Title ID: " .. tostring(data.m_iTitleID) .. "\r\nTitle name: " .. tostring(data.m_TitleName)) 
        if dataTitle.SOCKET_OPTION then
            if #dataTitle.SOCKET_OPTION > 0 then
                f:write("\r\nTitle sockets:")
                for k, v in pairs(dataTitle.SOCKET_OPTION) do
                    f:write("\r\n  " .. tostring(k) .. ") " .. tostring(v))
                end
            end
        end
    end
    return otherOriginalFunc(self, data)
end