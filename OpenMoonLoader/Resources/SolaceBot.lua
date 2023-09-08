local stage = "ELYSION_DIA_COMMON_FRAMEMOVE"
local stage_special = "ELYSION_S_2STAGE_HERBAON_COMMON_FRAME_MOVE_FUNC"
local boss_1 = "CF_ELYSION_S_CIRCLE_OBJECT_FIRE_KEYCODE_21"
local boss_2 = "ELYSION_S_MAYA_COMMON_FRAME_FUNC"
local solace = "CF_ELYSION_SOLESS_WAIT"
local instantKill = false

local curtainLines = {34, 57, 47, 81, 50, 15, 47}			
local goalLine = 34
local everythird = 1
local ofunc = nil

if ofunc == nil then
	ofunc = CX2World.SetLineMap
end

CX2World.SetLineMap = function(self, filestr)
	if filestr == "Elysion_Soless_Stage1_LineMap.lua" then
		goalLine = curtainLines[2]
	elseif filestr == "Elysion_Soless_Stage2_LineMap.lua" then
		goalLine = curtainLines[4]
	elseif filestr == "Elysion_Soless_Stage3_LineMap.lua" then
		goalLine = curtainLines[6]
	end

	return ofunc(self, filestr)
end

function dog1(pApp, pDGame, pDsubstage)
	goalLine = curtainLines[3]
end

function dog2(pApp, pDGame, pDsubstage)
	goalLine = curtainLines[5]
end

local killtp = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
	local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()
	for i = 0, nUnitListSize - 1 do
		local pUnit = pX2DungeonGame:GetNPCUnit(i)
		if pUnit then
			pUnit:SetNowHP(0)
		end
	end
	local userUnit = pX2DungeonGame:GetMyUnit()
	local centrepos = pX2DungeonGame:GetLineMap():GetCenterPositionLineIndex(goalLine)
	userUnit:SetPositionOnLine(centrepos, goalLine)
end

local killsolace = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
	local userUnit = pX2DungeonGame:GetMyUnit()
	if everythird == 3 then
		local pSolace = pX2DungeonGame:GetNPCUnitByType(NPC_UNIT_ID.NUI_ELYSION_SOLESS)
	    if pSolace then
	        if instantKill then
				pSolace:SetNowHP(0)
			else
				pSolace:SetNowHP(pSolace:GetNowHP() - (pSolace:GetMaxHP() / 20))
			end
		end
		everythird = 1
    else
    	everythird = everythird + 1
    end
	userUnit:SetNowHP(userUnit:GetMaxHP())
	goalLine = curtainLines[1]
end

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
FUNC_REPLACE_TABLE[stage] = killtp

_G[stage_special] = nil
FUNC_REPLACE_TABLE[stage_special] = killtp

_G[boss_1] = nil
FUNC_REPLACE_TABLE[boss_1] = killtp

_G[boss_2] = nil
FUNC_REPLACE_TABLE[boss_2] = killtp

_G[solace] = nil
FUNC_REPLACE_TABLE[solace] = killsolace

_G["CF_STAGE1_SUB1_TRIGGER0"] = nil
FUNC_REPLACE_TABLE["CF_STAGE1_SUB1_TRIGGER0"] = dog1

_G["CF_STAGE2_SUB1_TRIGGER0"] = nil
FUNC_REPLACE_TABLE["CF_STAGE2_SUB1_TRIGGER0"] = dog2