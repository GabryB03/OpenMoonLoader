local f = io.open("_pets.txt", "wb")

for k, v in pairs(PET_UNIT_ID) do
    f:write(k .. " = " .. tostring(v) .. "\r\n")  
end

f:close()