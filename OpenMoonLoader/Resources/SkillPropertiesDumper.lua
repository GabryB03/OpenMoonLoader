local f = io.open("_SkillPropertiesDump.lua", "wb")

f:write('local oldfunc = CX2SkillTree.AddSkillTemplet_LUA\n\n')

f:write('local function change1(tbl, pvp, val)\n')
f:write('\tif type(tbl) ~= "table" then return end\n')
f:write('\tfor k, v in pairs(tbl["m_Pvp_Rate"]) do\n')
f:write('\t\ttbl["m_Pvp_Rate"][k] = pvp\n')
f:write('\t\ttbl["m_Value"][k] = val\n')
f:write('\t\ttbl["m_Tech_Point"][k] = 350\n')
f:write('\t\ttbl["m_Hit_Add_MP"][k] = 10\n')
f:write('\tend\n')
f:write('end\n\n')

f:write('local function change2(tbl, val)\n')
f:write('\tfor k, v in pairs(tbl) do\n')
f:write('\t\ttbl[k] = val\n')
f:write('\tend\n')
f:write('end\n\n')

f:write('CX2SkillTree.AddSkillTemplet_LUA = function(self, data)\n')
f:write('\tif data then\n')

local oldfunc = CX2SkillTree.AddSkillTemplet_LUA
CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
    if data then
        local oldfunc2 = CX2SkillTree.AddSkillTempletTrans_LUA

        CX2SkillTree.AddSkillTempletTrans_LUA = function(self, data2)
            if data2 then
                for k, v in pairs(data) do
                    if k == "m_eID" then
                        for w, x in pairs(data2) do
                            if w == "m_eID" and v == x then
                                f:write('\t\tif data.m_eID == ' .. tostring(v) .. ' and false then --' .. data2["m_wstrName"] .. '\n')
                                
                                for i = 1, 13 do
                                    local a = "NUMERICAL_DATA"
                                    local b = a .. tostring(i)

                                    if data[b] then
                                        f:write('\t\t\tchange1(data.'.. b .. ', 1, ' .. tostring(data[b]["m_Value"][#data[b]["m_Value"]]) .. ') --' .. (data[b]["m_wstrName"]) .. ' : ' .. tostring(data[b]["m_Value"][#data[b]["m_Value"]]) .. '\n')
                                    end
                                end

                                for i = 1, 4 do
                                    local a = "SKILL_VALUE_TABLE"
                                    local b = a .. tostring(i)

                                    if data[b] then
                                        f:write('\t\t\tdata.'.. b .. ' = {\n\t\t\t\tTYPE = ' .. tostring(data[b]["TYPE"]) .. ',\n')
                                        f:write('\t\t\t\tVALUE = {')
                                        for k1, v1 in pairs(data[b]["VALUE"]) do
                                            f:write('"'..tostring(v1)..'", ')
                                        end
                                        f:write('}--Dont forget to delete the last ,\n\t\t\t}\n')
                                    end
                                end

                                if data["BUFF_FACTOR"] then
                                    f:write('\t\t\t--data.BUFF_FACTOR = {')
                                    for k1, v1 in pairs(data["BUFF_FACTOR"]) do
                                        f:write(tostring(v1) .. ', ')
                                    end
                                    f:write('}  --Only to know which buff is applied. Changing it has no effect\n')
                                end

                                local params = {"SA_ATK_REL", "SA_SCOPE_ABS", "SA_SCOPE_ABS_PVP", "SA_ULTIMATE_STRENGTHENED_SKILL_POWERRATE", "SA_EFFECTIVE_TIME", "SA_EFFECTIVE_RATE", "SA_DAMAGE_ABSORB_REL_MAX_HP", "SA_HIT_COUNT_1", "SA_EFFECTIVE_COUNT", "SA_PROJECTILE_RANGE_REL", "SA_MP_CONSUME_REL", "SA_DAMAGED_REL", "SA_DAMAGED_REL_PVP",
                                "SA_DEF_MAGIC_REL", "SA_DEF_MAGIC_REL_PVP", "SA_SIZE_ABS", "SA_MAX_HP_REL", "SA_MAX_HP_REL_PVP", "SA_COOLTIME_1", "SA_PROJECTILE_SIZE", "SA_MP_INTAKE_ABS", "SA_REMOTE_SPEED_ABS", "SA_REFLECT_REL", "SA_TIME_ABS", "SA_SOUL_ABS", "SA_EL_DEFENCE_ABS", "SA_ATK_CRITICAL_DAM_ABS", 
                                "SA_REDUCE_EDT_TIME_REL", "SA_MP_REGENERATION_ABS", "SA_MP_REGENERATION_ABS_PVP", "SA_MAX_MP_ABS", "SA_ITEM_SPECIAL_ABILITY_REL", "SA_FORCE_DOWN_REL", "SA_PROJECTILE_PIERCING", "SA_FORCE_DOWN_ABS", "SA_RECOVER_MP_ABS", "SA_RECOVER_MP_ABS_2", "SA_TARGET_MANA_REL", "SA_DAMAGE_REL", "SA_ATK_PHYSIC_REL", "SA_ATK_PHYSIC_REL_PVP", 
                                "SA_ATK_MAGIC_REL", "SA_ATK_MAGIC_REL_PVP", "SA_ADD_MP_VALUE_ABS", "SA_ADD_DP_VALUE_ABS", "SA_ANI_SPEED", "SA_RECOVERY_VALUE_REL", "SA_MP_GAIN_ON_HIT_REL", "SA_MP_GAIN_GET_HIT_REL", "SA_DP_USE_REL", "SA_DP_GAIN_REL", "SA_CHARGING_TIME", "SA_MP_CONSUMPTION", "SA_MP_RETAKE_ABS", "SA_SCOPE_ABS_X", "SA_SCOPE_ABS_Y", "SA_SCOPE_ABS_Z",  
                                "SA_MOVE_SPEED", "SA_ATK_MAGIC_FIRST_REL", "SA_ATK_MAGIC_SECOND_REL", "SA_PROJECTILE_CURVE_SPEED_REL", "SA_USE_DP_REL_AT_FORMATION_MODE", "SA_READY_TIME_REL", "SA_MP_BURN_ABS", "SA_PROJECTILE_FIRE_COUNT", "SA_PROJECTILE_RANGE_REL_2", "SA_MP_GAIN_ON_HIT_REL_3", "SA_MP_GAIN_ON_HIT_REL_2", "SA_COOLTIME_2", "SA_COOLTIME_3", 
                                "SA_WAY_OF_SWORD_POINT_MULTIPLIER", "SA_HP_INTAKE_REL_DAMAGE", "SA_DECREASE_REL", "SA_DAMAGE_TIME", "SA_FIRE_DEFENCE_ABS", "SA_ATK_CRITICAL_RATE_ABS", "SA_ATK_CRITICAL_DAM_ABS", "SA_UNFIXED_DEFENSE_REL", "SA_FORCE_DOWN_MELEE_REL", "SA_TARGET_HP_REL", "SA_HP_GAIN_REL_MAX_HP", "SA_DEF_PHYSIC_REL", "SA_JUMP_SPEED", "SA_ACCURACY_PERCENT_ABS", 
                                "SA_HP_REL_TO_MP_ABS_1", "SA_SECOND_HYPER_EFFECTIVE", "SA_FIRST_HYPER_EFFECTIVE", "SA_THIRD_HYPER_EFFECTIVE", "SA_CHARGE_CANNONBALL", "SA_SIEGE_SHELLING_REL", "SA_CANNONBALL_DAMAGE_UP_REL", "SA_FORCE_DOWN_REL_DAMAGE_RATE_BASE", "SA_INSERT_CANNONBALL_REL", "SA_BE_SHOT_CANNONBALL_REL", "SA_DECREASE_REL_2", "SA_EXPAND_CB", "SA_CRITICAL_EVASION_REL", 
                                "SA_EDT_SHOCK_RESIST_REL", "SA_WIND_DEFENCE_ABS", "SA_DARK_DEFENCE_ABS", "SA_EDT_CURSE_RESIST_REL", "SA_EDT_STUN_RESIST_REL", "SA_LIGHT_DEFENCE_ABS", "SA_WATER_DEFENCE_ABS", "SA_NATURE_DEFENCE_ABS", "SA_EDT_FIRE_RESIST_REL", "SA_EDT_ICE_RESIST_REL", "SA_FIRE_DEFENCE_ABS", "SA_EDT_Y_PRESSED_RESIST_REL", "SA_EDT_LEG_WOUND_RESIST_REL", 
                                "SA_EDT_FROZEN_RESIST_REL", "SA_EDT_POISON_RESIST_REL", "SA_NOT_CANNONBALL_REL", "SA_DEF_CRITICAL_DAM_ABS", "SA_SUMMON_ATK_REL", "SA_ATK_CRITICAL_RATE_ATK_BASE", "SA_AIR_MOVE_COUNT", "SA_TELEPORT_RANGE_ABS", "SA_HP_REL_TO_MP_ABS_2", "SA_SCOPE_ABS_HYPER", "SA_EFFECTIVE_TIME_HYPER", "SA_OVERHEAT_HP", "SA_OVERHEAT_HP_PVP", "SA_SOUL_GAIN_GET_HIT_REL", 
                                "SA_BACK_SPEED_X", "SA_SKILLDAMAGE_MULTIPLE_01", "SA_SKILLDAMAGE_MULTIPLE_01_RATE", "SA_SKILLDAMAGE_MULTIPLE_02", "SA_SKILLDAMAGE_MULTIPLE_02_RATE", "SA_SKILLDAMAGE_MULTIPLE_03", "SA_SKILLDAMAGE_MULTIPLE_03_RATE", "SA_SKILLDAMAGE_MULTIPLE_04", "SA_SKILLDAMAGE_MULTIPLE_04_RATE", "SA_TARGET_ANI_SPEED", "SA_TARGET_JUMP_SPEED", "SA_TARGET_MOVE_SPEED", 
                                "SA_STRONG_MIND_ACTIVE_REL", "SA_STRONG_MIND_SPECIAL_ACTIVE_REL", "SA_RESIST_WIND_ABS", "SA_RESIST_GREEN_ABS", "SA_ATK_MAGIC_THIRD_REL", "SA_ATK_MAGIC_SECOND_REL", "SA_RESIST_WATER_ABS", "SA_RESIST_FIRE_ABS", "SA_TARGET_MANA", "SA_TARGET_ATK_REL", "SA_TELEPORT_SPEED_REL", "SA_TARGET_HITRATE_REL", "SA_TEAM_DEF_MAGIC_REL", "SA_TEAM_DEF_PHYSIC_REL", 
                                "SA_TEAM_ATK_MAGIC_REL", "SA_TEAM_ATK_PHYSIC_REL"}

                                for k1, v1 in pairs(params) do
                                    if data[v1] then
                                        f:write('\t\t\tchange2(data.' .. v1 .. ', '.. tostring(data[v1][#data[v1]]) .. ') --' .. tostring(data[v1][#data[v1]]) .. '\n')
                                    end
                                end

                                if data["m_MPConsumption"] then
                                    f:write('\t\t\tdata.m_MPConsumption = {' .. tostring(data["m_MPConsumption"][#data["m_MPConsumption"]]) .. '}\n')
                                end

                                if data["m_eActiveSkillUseCondtion"] ~= 0 then
                                    f:write('\t\t\tdata.m_eActiveSkillUseCondtion = ' .. tostring(data["m_eActiveSkillUseCondtion"]) .. ' --Set to 3 to use the skill in the air. Can break some skills.\n')
                                end

                                if data["m_usFPConsumtion"] ~= 0 then
                                    f:write('\t\t\tdata.m_usFPConsumtion = ' .. tostring(data["m_usFPConsumtion"]) .. '\n')
                                end

                                if data["m_usFPGainCount"] ~= 0 then
                                    f:write('\t\t\tdata.m_usFPGainCount = ' .. tostring(data["m_usFPGainCount"]) .. '\n')
                                end

                                if data["m_usCBConsumption"] ~= 0 then
                                    f:write('\t\t\tdata.m_usCBConsumption = ' .. tostring(data["m_usCBConsumption"]) .. '\n')
                                end

                                f:write('\t\tend\n')
                                f:flush()

                                break
                            end
                        end
                    end
                end
            end

            return oldfunc2(self, data2)
        end
    end

    return oldfunc(self, data)
end

local added = false
local newOldFunc = CX2SkillTree.AddMasterSkillTemplet_LUA

CX2SkillTree.AddMasterSkillTemplet_LUA = function(self, data)

    if not added then
        added = true
        
        f:write('\tend\n')
        f:write('\treturn oldfunc(self, data)\n')
        f:write('end')
        f:close()
    end

    return newOldFunc(self, data)
end