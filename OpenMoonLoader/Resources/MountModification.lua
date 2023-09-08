local originalFunc = CX2RidingPetManager.AddRidingPetTemplet

CX2RidingPetManager.AddRidingPetTemplet = function(self, data)

	data.STAMINA_INCREASE_RATE = 10000
	data.STAMINA_RECOVERY_RATE = 1000

	for k, v in ipairs(data.ATTACK_SKILL_INFO or {}) do
	
		v[5] = 0
		v[6] = 0
		
	end
	
	return originalFunc(self, data)
end