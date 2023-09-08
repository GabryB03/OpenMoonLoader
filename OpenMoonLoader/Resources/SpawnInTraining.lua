local eNPCID = NPC_UNIT_ID.NUI_SHINING_TREASURE_BOX -- Monster to invoke
local iNPCLevel = 99 -- Level of the monsters
local iNPCCount = 10 -- Number of the monsters to invoke

function CF_STAGE0_SUB0_TRIGGER1(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
	return true
end

function RF_STAGE0_SUB0_TRIGGER1(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
	local existingNPCs = pX2DungeonGame:LiveNPCNumType_LUA(eNPCID)

	if existingNPCs > 0 then
		pX2DungeonGame:KillNPC(eNPCID, existingNPCs)
	else
		local spawnPos = pX2DungeonGame:GetEmptyStartPos()
		
		for i = 1, iNPCCount do
			pX2DungeonGame:PushCreateNPCReq_Lua(eNPCID, iNPCLevel, false, spawnPos, false, 0, false, 0)
		end
		
		pX2DungeonGame:FlushCreateNPCReq()
	end
end