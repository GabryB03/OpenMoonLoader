local killall = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
	g_pDungeonGame = pX2DungeonGame
    local userUnit = pX2DungeonGame:GetMyUnit()

    if GodModeEnabled then
		userUnit:SetForceInvincible(100)
		userUnit:SetDamageReducePercent(100)
	end

    if AllElixirsHackEnabled then
		ApplyAllElixirs(userUnit)
	end

    if AttackSpeedHackEnabled then
        userUnit:SetAnimSpeed_LUA(AttackSpeedHackValue)
    end
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

_G["DUNGEON_CHECKER_START_STATE_START"] = nil
FUNC_REPLACE_TABLE["DUNGEON_CHECKER_START_STATE_START"] = killall