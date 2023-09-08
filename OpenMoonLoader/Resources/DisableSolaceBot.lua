local nothingToDo = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
	
end

local trigger1 = "ELYSION_DIA_COMMON_FRAMEMOVE"
local trigger2 = "ELYSION_S_2STAGE_HERBAON_COMMON_FRAME_MOVE_FUNC"
local trigger3 = "CF_ELYSION_S_CIRCLE_OBJECT_FIRE_KEYCODE_21"
local trigger4 = "ELYSION_S_MAYA_COMMON_FRAME_FUNC"
local trigger5 = "CF_ELYSION_SOLESS_WAIT"

if not getmetatable(_G) then
  FUNC_REPLACE_TABLE = {}

  local mt = {
    __index = FUNC_REPLACE_TABLE,
    __newindex = function(tbl, key, value)
      if FUNC_REPLACE_TABLE[key] then return end
      rawset(tbl, key, value)
    end
  }
  setmetatable(_G, mt)
end

_G[stage] = nil
FUNC_REPLACE_TABLE[trigger1] = nothingToDo

_G[stage] = nil
FUNC_REPLACE_TABLE[trigger2] = nothingToDo

_G[stage] = nil
FUNC_REPLACE_TABLE[trigger3] = nothingToDo

_G[stage] = nil
FUNC_REPLACE_TABLE[trigger4] = nothingToDo

_G[stage] = nil
FUNC_REPLACE_TABLE[trigger5] = nothingToDo