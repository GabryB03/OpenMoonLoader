-- Auto Kill Configuration.
local PlayerInvisible = false
local PlayerInvincible = true
local MonstersInvisible = false
local MonsterVAC = false
local MonstersNoAggressive = false
local FullHP = false
local FullMP = false
local DamageReduce = false
local KillMonsters = true
local AutoAttackAll = false
local AutoAttackAllDamagePercent = 50
local AutoAttackAllDamageTime = 300
local AttackSpeedHack = false
local AttackSpeedHackPercent = 15
local AutoNextStage = true
local AutoMove = false
local MPBonusBuffHack = false
local NewMonsterVAC = false

if AutoAttackAll then
    createDamageEffect("BOT_DAMAGE_EFFECT", AutoAttackAllDamageTime, AutoAttackAllDamagePercent, AutoAttackAllDamagePercent, 0.2, 5)
end

local curtainList = {}
local maxStage = 0

local function modifySubStage(sub_stage, stageIdx, subStageIdx)
    if not curtainList[stageIdx] then curtainList[stageIdx] = {} end

    if maxStage < stageIdx then
        maxStage = stageIdx
    end
    
    local curtain = sub_stage.CURTAIN_GROUP
    
    if curtain == nil then
        return
    end
    
    if type(curtain) ~= "table" then
        return
    end
    
    local atStartNeeded = FALSE
    
    if sub_stage.GO_TYPE == GO_TYPE.GT_LEFT then
        atStartNeeded = TRUE
    end
    
    local curtainIdx = nil
    
    for k, v in ipairs(curtain) do
        if v.AT_START == atStartNeeded then
            curtainIdx = v.LINE_INDEX
        end
    end
    
    if not curtainIdx and curtain[1] then
        curtainIdx = curtain[1].LINE_INDEX
    end
    
    curtainList[stageIdx][subStageIdx] = curtainIdx
end

-- Monster VAC script.
if MonsterVAC then
    local BOT_LAST_POS = nil
    local originalAddStartPos = CKTDGLineMap.AddStartPos

    CKTDGLineMap.AddStartPos = function(self, num, pos, unkbool, unkint)
        if (not BOT_LAST_POS) or (num == 1) then
            BOT_LAST_POS = pos
        end

        return originalAddStartPos(self, num, BOT_LAST_POS, unkbool, unkint)
    end
end

-- Auto Kill script.
local killall = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
    g_pDungeonGame = pX2DungeonGame
    local userUnit = pX2DungeonGame:GetMyUnit()

    if PlayerInvisible then
        userUnit:TransformScale_LUA(0, 9999)
        userUnit:SetForceCanPass(9999)
    end

    if MPBonusBuffHack then
        userUnit:SetBuffFactorToGameUnitByBuffFactorID_LUA(BUFF_FACTOR_ID.BFI_BUFF_DWARF_MEDICINE)
    end

    if AutoMove then
        userUnit:SetSpeedX(5555)
    end

    if AttackSpeedHack then
        userUnit:SetAnimSpeed_LUA((AttackSpeedHackPercent / 100) + 1)
    end

    if PlayerInvincible then
        userUnit:SetForceInvincible(100)
    end

    if DamageReduce then
        userUnit:SetDamageReducePercent(100)
    end

    if FullHP then
        userUnit:SetNowHP(userUnit:GetMaxHP())
    end

    if FullMP then
        userUnit:SetNowMP(userUnit:GetMaxMP())
    end

    if MonstersNoAggressive then
        pX2DungeonGame:EnableAllNPCAI(false)
    end

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

    if AutoNextStage then
        for stage_name, stage in pairs(STAGE_LIST) do
            if (type(stage_name) == "string") and stage_name:find("^STAGE%d+$") then
                for sub_stage_name, sub_stage in pairs(stage) do
                    if (type(sub_stage_name) == "string") and sub_stage_name:find("^SUB_STAGE%d+$") then
                        local st = stage_name:gsub("STAGE", "")
                        local subst = sub_stage_name:gsub("SUB_STAGE", "")
                        modifySubStage(sub_stage, tonumber(st), tonumber(subst))
                    end
                end
            end
        end
    
        local pos = userUnit:GetLandPosition_LUA()
        local stageIdx = pX2DungeonGame:GetNowStageIndex()
        local subStageIdx = pX2DungeonGame:GetNowSubStageIndex()
    
        local teleportLine = curtainList[stageIdx][subStageIdx]
        local standOnLine = userUnit:GetLastTouchLineIndex()
    
        if teleportLine and (teleportLine ~= standOnLine) then
            local lineMap = pX2DungeonGame:GetLineMap()
            local newPos = lineMap:GetCenterPositionLineIndex(teleportLine)
            userUnit:SetPositionOnLine(newPos, teleportLine)
        end 
    end

   if KillMonsters or MonstersInvisible and not AutoAttackAll then
        local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()  
        for i = 0, nUnitListSize - 1 do 
            local pUnit = pX2DungeonGame:GetNPCUnit(i)      
            if pUnit then
                if NewMonsterVAC and not pUnit:GetInvincible_LUA() then
                    pUnit:SetPosition(userUnit:GetPos())
                end
                if MonstersInvisible then
                    pUnit:TransformScale_LUA(0, 9999)
                end
                if KillMonsters then
                    pUnit:SetNowHP(0) 
                end
            end
        end
    end

    if AutoAttackAll and not KillMonsters then
        local pDamageEffect = pX2DungeonGame:GetDamageEffect()
        local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()

        for i = 0, nUnitListSize - 1 do
            local pUnit = pX2DungeonGame:GetNPCUnit(i)

            if pUnit then
                if NewMonsterVAC and not pUnit:GetInvincible_LUA() then
                    pUnit:SetPosition(userUnit:GetPos())
                end

                local unitPos = pUnit:GetPos()
                pDamageEffect:CreateInstance_LUA(userUnit, "BOT_DAMAGE_EFFECT", unitPos, unitPos.y)
            end
        end
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