-- Skill Modification configuration.
local NoMPConsumption = true
local NoSkillsCooldown = true

local CustomMPConsumption = false
local CustomSkillsCooldown = false

local CustomMPConsumptionValue = 50
local CustomSkillsCooldownValue = 3

local UseSkillsInAir = true
local NoCharacterStatsConsumption = true

local function nullThat(tbl)
	if type(tbl) ~= "table" then
		return
	end
	
	for k, v in ipairs(tbl) do
		tbl[k] = 0
	end
end

local function setAll(tbl, val)
	if type(tbl) ~= "table" then
		return
	end
	
	for k, v in ipairs(tbl) do
		tbl[k] = val
	end
end

local oldfunc = CX2SkillTree.AddSkillTemplet_LUA

CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if data then
		if NoMPConsumption then
			nullThat(data.m_MPConsumption)
			-- Info -> All skills will not need use MP (can see in skill description).
			-- Info -> MP using Random Mission cannot be fullfilled anymore.
			-- Bug -> Add DP Skill will not restore any DP as no MP consume.
		elseif CustomMPConsumption then
			data.m_MPConsumption = {CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue, CustomMPConsumptionValue}
			-- Info -> All skills will consume specified mana value.		
		end

		if NoSkillsCooldown then
			nullThat(data.m_SkillCoolTime)
			-- Info -> All skills will not have cooldown time.		
		elseif CustomSkillsCooldown then
			setAll(data.m_SkillCoolTime, CustomSkillsCooldownValue)
			-- Info -> All skills will have specified cooldown time.		
		end

		if UseSkillsInAir then
			data.m_eActiveSkillUseCondtion = 3
			-- Info -> Any Skill now can be used when airborne, attacked, knockdowned... even when screen warning in boss.
			-- Info -> Use with Cooldown Hack, you can cancel animation of any skill, however some skills will not takes effect as animation didn't finish.
			-- Bug -> Erbluhen Emotion's Alchimie Eid bug really hard on this, don't recommended, see for yourself.
		end

		if NoCharacterStatsConsumption then
			data.m_usCBConsumption = 0
			data.m_CB_CONSUMPTION = 0
			data.CB_CONSUMPTION = 0
			data.m_SA_CHARGE_CANNONBALL = 4
			-- Info -> All modifications for Cannon Ball Hack.
			-- Bug -> Is not working in PVE? Try to do that in PVP.

			nullThat(data.SA_USE_DP_REL_AT_FORMATION_MODE)	
			-- Info -> 'Add' character no longer use DP when awakened (work best on Diabolic Esper).
			-- Bug -> Mastermind still consume DP when switching Dynamo Skill.
			-- Bug -> Mastermind still consume MP Dynamo Skills,
		end
	end
	return oldfunc(self, data)
end