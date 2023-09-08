local func = "FUNCTION"

local newfunc

newfunc = function(obj, ...)

  if not obj then
  
	print(func)
    print("---")
	
    return
	
  end
  
  local meta = getmetatable(obj)
  
  if meta then
  
    obj = meta.__name
	
  end
  
  print(tostring(obj))
  newfunc(...)
  
end

if not getmetatable(_G) then

  FUNC_REPLACE_TABLE = {}

  local mt =
  {
  
    __index = FUNC_REPLACE_TABLE,
    __newindex = function(tbl, key, value)
      if FUNC_REPLACE_TABLE[key] then return end
      rawset(tbl, key, value)
    end
	
  }
  
  setmetatable(_G, mt)
  
end

_G[func] = nil
FUNC_REPLACE_TABLE[func] = newfunc