 -- Add as many skills as you want to edit
local skills = {"AASI_SA_AAH_AUTOSUGGESTION", "AASI_SA_AAH_STILL_LENZE"}
 -- Add as many buffs (per skill) as you want
local buffs = {"1032","1033", "1034", "1196", "1169", "1964", "530", "1739", "1313", "9", "615", "1824", "830", "678", "1936", "1939", "501", "968", "2026", "1986", "1300", "919", "1316", "900", "1036", "1503", "1538", "1524"}
 -- Add as many effects (per skill) as you want
local Effect = {"EffectSet_NOAH_NHSI_M_NCE_SIRIUS_CLASS4_FX", "EffectSet_NOAH_NHSI_M_NCE_SIRIUS_CLASS4"}

local a = true -- To activate/deactivate the buffs modifications
local b = true -- To activate/deactivate the effects modifications

local c = "EFFECT_SET"
local effectCount
local buffsTable = {}

local function tableLength(T)
	local count = 0

	for _ in pairs(T) do
		count = count + 1
	end
	
	return count
end

function TableConcat(t1,t2)
	for i=1, #t2 do
		t1[#t1+1] = t2[i]
	end
end

for k, v in pairs(buffs) do
	table.insert(buffsTable, {v, 0.1})
end

for k1, v1 in pairs(skills) do
	if a then
		if not _G[v1]["BUFF_FACTOR_ID_AND_APPLY_TIME"] then 
			_G[v1]["BUFF_FACTOR_ID_AND_APPLY_TIME"] = {}
		end
		
		_G[v1]["BUFF_FACTOR_ID_AND_APPLY_TIME"] = buffsTable
		
		if _G[v1]["BUFF_FACTOR_ID_AND_APPLY_TIME_ULTIMATE"] then 
			_G[v1]["BUFF_FACTOR_ID_AND_APPLY_TIME_ULTIMATE"] = buffsTable
		end
	end
	if b then
		if _G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"]  then -- It may be complicated to understand here, but there are basically 4 different types of effects, and each one needs to be modified in a different way
			effectCount = tableLength(_G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"])
			
			for k2, v2 in pairs(Effect) do
				_G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"][c .. tostring(effectCount)] = {CONSUME_MP = 0, NOT_HAVE_CHECK_BUFF_LIST = {}, DELETE_CONDITION = {0}, EFFECT_NAME = v2, START_TIME = 0} -- May need to change the value of NOT_HAVE_CHECK_BUFF_LIST and DELETE_CONDITION depending on the effect
				effectCount = effectCount + 1
			end
		elseif _G[v1]["EFFECT_SET_LIST_FINAL"] then
			_G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"] = _G[v1]["EFFECT_SET_LIST_FINAL"]
			effectCount = tableLength(_G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"])
			
			for k2, v2 in pairs(Effect) do
				_G[v1]["EFFECT_SET_LIST_FINAL_ULTIMATE"][c .. tostring(effectCount)] = {CONSUME_MP = 0, NOT_HAVE_CHECK_BUFF_LIST = {}, DELETE_CONDITION = {0}, EFFECT_NAME = v2, START_TIME = 0} -- May need to change the value of NOT_HAVE_CHECK_BUFF_LIST and DELETE_CONDITION depending on the effect
				effectCount = effectCount + 1
			end
		elseif _G[v1]["EFFECT_SET_LIST_EX"] then
			effectCount = tableLength(_G[v1]["EFFECT_SET_LIST_EX"]) + 1
			
			for k2, v2 in pairs(Effect) do
				_G[v1]["EFFECT_SET_LIST_EX"][tostring(effectCount)] = {v2, 0, 0, 0, 0} -- You need to change these values according to the one in the effect.
				effectCount = effectCount + 1
			end
		elseif _G[v1]["EFFECT_SET_LIST"] then
			effectCount = tableLength(_G[v1]["EFFECT_SET_LIST"]) + 1
			
			for k2, v2 in pairs(Effect) do
				_G[v1]["EFFECT_SET_LIST"][tostring(effectCount)] = v2 
				_G[v1]["EFFECT_SET_LIST"][tostring(effectCount + 1)] = 0
				effectCount = effectCount + 2
			end
		end
	end
end