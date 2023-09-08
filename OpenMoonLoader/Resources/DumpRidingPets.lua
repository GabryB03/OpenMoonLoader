local f = io.open("_riding_pets.txt", "wb")

for k, v in pairs(RIDING_PET_UNIT_ID) do
    f:write(k .. " = " .. tostring(v) .. "\r\n")  
end

f:close()