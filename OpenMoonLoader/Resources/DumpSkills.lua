local f = io.open("_skills.txt", "wb")

for k, v in pairs(SKILL_ID) do
    f:write(k .. " = " .. tostring(v) .. "\r\n")  
end

f:close()