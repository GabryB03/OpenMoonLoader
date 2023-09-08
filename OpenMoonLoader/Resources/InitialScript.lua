GodModeEnabled = false
AllElixirsHackEnabled = false
AttackSpeedHackEnabled = false
AttackSpeedHackValue = 1
g_pDungeonGame = nil
originalFunctionAddStartPos = CKTDGLineMap.AddStartPos

function ResetMonsterVAC()
	CKTDGLineMap.AddStartPos = originalFunctionAddStartPos
end

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

function ApplyAllElixirs(userUnit)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLAZING_BOMB_EQUIP)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BIG_HAND_POTION)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_LUNACY_OF_CHASER)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLAZING_BOMB_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_GIANT_CRADLE_OF_LITTLE_FAIRY)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_GIANT_POTION)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_PROMINENCE_OF_ROSSO)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_SPIRIT_OF_CHASER)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLESS_OF_ELDRASILPOTION_LV1)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLESS_OF_ELDRASILPOTION_LV2)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_GIANT_POTION_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_CRADLE_OF_LITTLE_FAIRY_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_FEATHER_OF_VENTUS_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_SPIRIT_OF_CHASER_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLESS_OF_ELDRASILPOTION_LV4)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_SPIRIT_OF_CHASER_EQUIP)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLESS_OF_ELDRASILPOTION_LV5)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_GIANT_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLESS_OF_ELDRASILPOTION_LV3)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_FEATHER_OF_VENTUS)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_FLAME_RING_OF_ROSSO_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_RANOX_DUNGEON_56_EVENT)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_ICE_BALL_OF_DENIPH_EQUIP)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_FLAME_RING_OF_ROSSO)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_ICE_BALL_OF_DENIPH)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BIG_HAND_POTION_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_ICE_BALL_OF_DENIPH_BLESSED)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_CRADLE_OF_LITTLE_FAIRY_EQUIP)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_WING_OF_VENTUS)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_GIANT_FEATHER_OF_VENTUS)
	userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_ELIXIR_BLAZING_BOMB)
end

function createDamageEffect(name, time, physical, magical, frequency, addMp)
    return pcall(function()
        _G[name] = {
          EFFECT_TYPE = DAMAGE_EFFECT_EFFECT_TYPE.DEET_BASIC,
          MAIN_EFFECT_NAME = "ElswordMaelStromAttackBox",
          DAMAGE_TIME = time,
          ATTACKED_BY_UNIT = FALSE,
          ATTACKED_BY_EFFECT = FALSE,
          REFLECT = FALSE,
          USE_GLOBAL_TIME = TRUE,
          DAMAGE_DATA = {
            WAY_OF_SWORD_TYPE = WAY_OF_SWORD_TYPE.WST_VIGOR_SPECIAL,
            DAMAGE_TYPE = DAMAGE_TYPE.DT_MIX,
            ATTACK_TYPE = ATTACK_TYPE.AT_SPECIAL,
            HIT_TYPE = HIT_TYPE.HT_NO_SOUND,
            REACT_TYPE = REACT_TYPE.RT_SMALL_DAMAGE,
            PVP_RATE = 0.525,
            DAMAGE = {PHYSIC = physical, MAGIC = magical},
            BACK_SPEED_X = -500,
            STOP_TIME_DEF = 0.066,
            CAMERA_CRASH_GAP = 3,
            CAMERA_CRASH_TIME = 1,
            CAN_REVENGE = FALSE,
            CAN_REFLEX = FALSE,
            RE_ATTACK = TRUE,
            HIT_GAP = frequency,
            HIT_ADD_MP = addMp,
            TECH_POINT = 37,
            FORCE_DOWN = -3,
            FORCE_FLY = TRUE,
          },
          HIT_PARTICLE0 = {
            POSITION_TYPE = DAMAGE_EFFECT_POSITION_TYPE.DEPT_IMPACT_POINT,
            PARTICLE_NAME = "DamageImpact",
            TRIGGER_COUNT = 10
          },
          HIT_PARTICLE1 = {
            POSITION_TYPE = DAMAGE_EFFECT_POSITION_TYPE.DEPT_IMPACT_POINT,
            PARTICLE_NAME = "DamageImpactCore",
            TRIGGER_COUNT = 10
          },
          HIT_PARTICLE2 = {
            POSITION_TYPE = DAMAGE_EFFECT_POSITION_TYPE.DEPT_IMPACT_POINT,
            PARTICLE_NAME = "DamageImpactSlash",
            TRIGGER_COUNT = 2
          }
        }
    end)
end