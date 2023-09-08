local f = io.open("_buff_factors.txt", "wb")

for k, v in pairs(BUFF_FACTOR_ID) do
    f:write(k .. " = " .. tostring(v) .. "\r\n")  
end

f:close()