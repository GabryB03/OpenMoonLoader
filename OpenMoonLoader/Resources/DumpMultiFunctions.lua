function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end
function lines_from(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end
local lines = lines_from("_funcs.txt")

local outfile = "_fdResult_clean.txt"
local f       = io.open(outfile, "wb")
local outfunc = function(text)
    f:write(text)
    f:flush()
end
local funclist = { 
    {"CX2ItemManager", "AddShopItemList_LUA"}
}
local fromfile = false
if fromfile then 
    for k,v in pairs(lines) do
        one, two = lines[k]:match("([^.]+).([^.]+)")
        table.insert(funclist, { one, two })
        outfunc("Found: [" .. two .. "]\r\n")
    end
end

local dump = true
if dump then
local pack0
pack0 = function(tbl, idx, a, ...)
    tbl[idx] = a
    if a then pack0(tbl, idx + 1, ...) end
    return tbl
end
local function pack(...)
    return pack0({}, 1, ...)
end

local tbldump
tbldump = function(tbl, outfunc)
    if type(tbl) == "string" then
        outfunc("\"")
        outfunc(tbl)
        outfunc("\"")
    elseif type(tbl) == "table" then
        outfunc("{")
        for k, v in pairs(tbl) do
            outfunc("[")
            tbldump(k, outfunc)
            outfunc("] = ")
            tbldump(v, outfunc)
            outfunc(", ")
        end
        outfunc("}")
    else
        outfunc(tostring(tbl))
    end
end


outfunc("Starting.\r\n")

for k, v in pairs(funclist) do
    local func = _G
    local enclosing = nil
    local enclosingKey = nil
    for meh, fname in ipairs(v) do
        enclosing = func
        enclosingKey = fname
        func = func[fname]
    end

    enclosing[enclosingKey] = function(...)
        outfunc(tostring(enclosingKey) .. "(")
        local makecomma = false
        for k, v in ipairs(pack(...)) do
            if makecomma then outfunc(", ") end
            makecomma = true
            tbldump(v, outfunc)
        end
        outfunc(")\r\n")
        return func(...)
    end

    outfunc("Installed for " .. tostring(enclosingKey) .. "\r\n")
end
end