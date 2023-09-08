-- Safe Auto Kill configuration.
local KillMonsters = true
local AutoNextStage = true
local SuperPlayer = false
local KillInvincibleObjects = false
local MonsterVAC = false

local SetEnemiesHP = false
local SetEnemiesHPCustomValue = 125

local CustomPhysicalDamageValue = 10
local CustomMagicalDamageValue = 10
local CustomDamageTimeValue = 999999
local CustomDamageFrequencyValue = 0.2
local CustomMPAdd = 5

createDamageEffect("BOT_DAMAGE_EFFECT", CustomDamageTimeValue, CustomPhysicalDamageValue, CustomMagicalDamageValue, CustomDamageFrequencyValue, CustomMPAdd)

local curtainList = {}
local maxStage = 0

local function modifySubStage(sub_stage, stageIdx, subStageIdx)
    if not curtainList[stageIdx] then
        curtainList[stageIdx] = {}
    end

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

local BasicFunction = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
    g_pDungeonGame = pX2DungeonGame
    local userUnit = pX2DungeonGame:GetMyUnit()

    if SuperPlayer then
        userUnit:SetForceInvincible(100)
        userUnit:SetDamageReducePercent(100)
        userUnit:SetNowHP(userUnit:GetMaxHP())
        userUnit:SetNowMP(userUnit:GetMaxMP())
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

    local pDamageEffect = pX2DungeonGame:GetDamageEffect()
    local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()

    for i = 0, nUnitListSize - 1 do
        local pUnit = pX2DungeonGame:GetNPCUnit(i)
        if pUnit then
            if MonsterVAC and not pUnit:GetInvincible_LUA() then
                pUnit:SetPosition(userUnit:GetPos())
            end
            if pUnit:GetInvincible_LUA() and KillInvincibleObjects then
                pUnit:SetNowHP(0)
            else
                if SetEnemiesHP then
                    pUnit:SetNowHP(SetEnemiesHPCustomValue)
                end
                if KillMonsters then
                    local unitPos = pUnit:GetPos()
                    pDamageEffect:CreateInstance_LUA(userUnit, "BOT_DAMAGE_EFFECT", unitPos, unitPos.y)
                end
            end
        end
    end
end

if not getmetatable(_G) then
    FUNC_REPLACE_TABLE = {}

    local mt = {
        __index = FUNC_REPLACE_TABLE,
        __newindex = function(tbl, key, value)
            if FUNC_REPLACE_TABLE[key] then
                return
            end
            rawset(tbl, key, value)
        end
    }

    setmetatable(_G, mt)
end

_G["DUNGEON_CHECKER_START_STATE_START"] = nil
FUNC_REPLACE_TABLE["DUNGEON_CHECKER_START_STATE_START"] = BasicFunction