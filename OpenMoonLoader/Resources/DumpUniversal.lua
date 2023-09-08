local outfile = "_fdResult.txt"

local funclist =
{
	{"Table", "Function"}, 
	-- Here the table + function you want, you can dump more then one in one execution.
}


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

local f = io.open(outfile, "wb")

local outfunc = function(text)

	f:write(text)
	f:flush()
	
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