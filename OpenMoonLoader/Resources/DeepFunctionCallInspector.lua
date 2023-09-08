local f = io.open("_DumpCalls.txt", "wb")

local function printTable(t)
    local printTable_cache = {}
    local function sub_printTable(t, indent)
        if (printTable_cache[tostring(t)]) then
            f:write("\n", indent .. "*" .. tostring(t))
        else
            printTable_cache[tostring(t)] = true
            if (type(t) == "table") then
                for pos, val in pairs(t) do
                    if (type(val) == "table") then
                        f:write("\n", indent .. "[" .. pos .. "] => ", tostring(t), "\n", indent .. "{")
                        sub_printTable(val, indent .. string.rep(" ", string.len(pos) + 3))
                        f:write("\n", indent .. "}")
                    elseif (type(val) == "string") then
                        f:write("\n", indent .. "[" .. pos .. '] => "' .. val .. '"')
                    else
                        f:write("\n", indent .. "[" .. pos .. "] => " .. tostring(val))
                    end
                end
            else
                f:write("\n", indent .. tostring(t))
            end
        end
    end
    if (type(t) == "table") then
        f:write(tostring(t) .. "  {")
        sub_printTable(t, "  ")
        f:write("\n}")
    else
        sub_printTable(t, "  ")
    end
end

local function writeTable(k, v)
    f:write("\nArgument " .. k .. " = " .. tostring(v) .. " => " .. type(v) .. "\r\n")
    if type(v) == "table" then
        printTable(v)
    end
    if type(v) == "userdata" then
        f:write("{\n")
        for l, m in pairs(getmetatable(v)) do
            f:write("   " .. "[" .. l .. "] => " .. tostring(m) .. " => " .. type(m) .. "\n")
        end
        f:write("}\n")
    end
end

local funclist = {}

local funct = {
    "CX2TitleManager",
    "Slash_sdm",
    "Slash_dhn",
    "Slash_tf",
    "Slash_addelioscoin",
    "Slash_dbrr",
    "Slash_linemap",
    "Slash_selo",
    "Slash_darkportal",
    --"IsCurrentNation",
    "Slash_rns",
    "Slash_e",
    "NormalDef",
    "WriteErrorLog",
    "Slash_settd",
    "GET_EQUIP_FACTOR",
    "Slash_weaponquestcount",
    --"pairs",
    "Slash_starthalloween2017",
    "Slash_mpf",
    "Slash_arrangepvp",
    "Slash_stdb",
    "Slash_setsot",
    "Slash_agp",
    "IsOpenTest",
    "Slash_saui",
    "Slash_pa",
    "Slash_halloweenreset",
    "getfenv",
    "Slash_suidr",
    "DisplayMessage",
    "require",
    "collectgarbage",
    "module",
    "Slash_na",
    "Slash_luckytimingeventlv",
    "Slash_rsbs",
    "Slash_skl",
    "GetRSI_RSR_DASH_JUMP_COMBO_XX_HANDCANNON",
    "Slash_sscc",
    "Slash_gt",
    "Slash_aic",
    "Slash_reform",
    "Slash_wakeup",
    "Slash_danger",
    "Slash_fakegetitempos",
    "Slash_yainitquest",
    "Slash_initmoonrabbit",
    "Slash_closeraidgate",
    "Slash_rnue",
    "setfenv",
    "Slash_setprofession",
    "Slash_ban",
    "Slash_gmc",
    "DefFactor",
    "Slash_endstr",
    "Slash_gfxl",
    --"tostring",
    "Slash_by",
    "Slash_aem",
    "Slash_reloadpet",
    "Slash_dhr",
    "Slash_isk",
    "Slash_cmp",
    "Slash_nsp",
    "Slash_afd",
    "Slash_age",
    "Slash_pt",
    "Slash_egp",
    "Slash_stage",
    "Slash_isl",
    "Slash_rmy",
    "Slash_didh",
    "Slash_resetchoiceevent2018",
    "Slash_cdm",
    "Slash_channel",
    "Slash_kfc",
    "Slash_unlockitem",
    "Slash_nqc",
    "Slash_resettimeevent",
    "Slash_hse",
    "GetAttribEnchantRequiredED",
    "Slash_npchpsync",
    "GetDefenseFactorByGameType",
    "Slash_housingex",
    "Slash_ipg",
    "Slash_tutea",
    "Slash_damagelog_mi_critical",
    "GetDistance_LUA",
    "Slash_dfv",
    "Slash_ab",
    "Slash_rccd",
    --"type",
    "Slash_cbp",
    "Slash_dsm",
    "Slash_blockdamagerange",
    "Slash_forcehost",
    "Slash_setenablepmcp",
    "Slash_msc",
    "Slash_housinget",
    "loadfile",
    "Slash_lp",
    "Slash_shownpcname",
    "Slash_resetnewyear2021",
    "Slash_fsk",
    "RandomInt_LUA",
    "Slash_muc",
    "Slash_petstatus",
    "Slash_yaweek",
    "Slash_skillexpanddate",
    "load",
    "Slash_crash",
    "Slash_uuu",
    "Slash_agitclienttest",
    "Slash_energy",
    "Slash_adv",
    "Slash_rps",
    "Slash_tor",
    "Slash_swl",
    "Slash_uc2",
    "Slash_stloc",
    "Slash_t",
    "Slash_lwl",
    "Slash_sbpy",
    "Slash_qc",
    "Slash_scanon",
    "Slash_nidt",
    "Slash_monhp",
    "Slash_editbone",
    "Slash_usx",
    "Slash_applicablepenalty",
    "Slash_summerevent2017",
    "Slash_randomcube",
    "Slash_nf",
    "Slash_ep",
    "Slash_plc",
    "Slash_bingonum",
    "Slash_drank",
    "Slash_halloween2018chance",
    "Slash_luckybag2021",
    "Slash_tc",
    "Slash_elskpt",
    "Slash_initsatquiz",
    "Slash_specialshop",
    "Slash_weaponquestclear",
    "Slash_sps",
    "Slash_q",
    "Slash_openraidgate",
    "Slash_ki",
    "Slash_shop",
    "Slash_luto",
    "Slash_gminfowatch",
    "IsInhouse",
    --"CheckNation",
    "Slash_fwarp",
    "Slash_gl",
    "rawequal",
    "Slash_sld",
    "Slash_drrr",
    "Slash_resetsat2020",
    "Slash_al",
    "Slash_refreshrank",
    "next",
    "newproxy",
    "Slash_halloween2019",
    "error",
    "Slash_gpvp",
    "SecretLutoDef",
    "Slash_helpfield",
    "Slash_ps",
    "Slash_cm",
    "Slash_uee",
    "Slash_du",
    "Slash_gft",
    "Slash_bingoaqc",
    "Slash_housingrewardtime",
    "Slash_halloweenbonus",
    "dofile",
    "Slash_tmc",
    "Slash_tbep",
    "Slash_manabreak",
    "Slash_warp",
    "Slash_petmission",
    "Slash_totaldanger",
    "Slash_damagelog",
    "Slash_satt",
    "Slash_lockitem",
    "Slash_mhp",
    "Slash_bingochance",
    "Slash_fever",
    "GetString",
    "Slash_renewalworldtrip",
    "Slash_ap",
    "Slash_cgsd",
    "Slash_sa",
    "xpcall",
    "Slash_hrr",
    "Slash_teatype",
    "Slash_gfw",
    "loadstring",
    "Slash_editequip",
    "Slash_fov",
    "GET_ED_FACTOR_BY_GRADE",
    "Slash_dp",
    "Slash_memorycrash",
    "Slash_dungeonresultexp",
    "Slash_showpvpbuff",
    "Slash_dron",
    "gcinfo",
    "Slash_sad",
    "Slash_cs",
    "Slash_csd",
    "Slash_nlc",
    "rawset",
    "dofile_UTF8",
    "Slash_lag",
    "Slash_tmo",
    "Slash_ip",
    "Slash_destroy",
    "Slash_dfgstop",
    "Slash_canon",
    "Slash_resetcollectmoonlightevent2018",
    "Slash_ad",
    "Slash_pettime",
    "Slash_atkboxcap",
    "Slash_henirlast",
    "Slash_n",
    "Slash_effectlog",
    "Slash_nocooltime",
    "Slash_rdduea",
    "Slash_randomitemlist",
    "Slash_suv",
    "Slash_cwl",
    "Slash_emc",
    "Slash_notify",
    "Slash_kid",
    "GET_ATTRIB_FACTOR_BY_ENCHANT_COUNT",
    "SecretNormDef",
    "HenirDef",
    "Slash_mpn",
    "GetReplacedString",
    "Slash_guest",
    "Slash_noahlockerroomkey2021",
    "Slash_tureg",
    "Slash_allget",
    "Slash_scn",
    "Slash_obsmode",
    "Slash_rp",
    "RandomFloat_LUA",
    "Slash_eef",
    "Slash_acc",
    "Slash_at",
    "Slash_setnpcverify",
    "Slash_sp",
    "Slash_rdl",
    --"ipairs",
    "Slash_setfrozeninfo",
    "GetHPFactorByGameType",
    "Slash_ucc",
    "Slash_buff",
    "GetRSI_RSR_DASH_JUMP_COMBO_XZ_HANDCANNON",
    "Slash_vps",
    "Slash_ak",
    "Slash_icdc",
    "Slash_cmt",
    "Slash_b",
    "Slash_setdfg",
    --"setmetatable",
    "Slash_l",
    "Slash_tustu",
    "Slash_re",
    "Slash_dev",
    "Slash_artifactlevel",
    "Slash_rcvmp",
    "Slash_did",
    "Slash_vp2",
    "Slash_fskl",
    "okmsgbox",
    "Slash_petreset",
    "Slash_rcvhp",
    "Slash_lifes",
    "unpack",
    "Slash_bufffactor",
    "Slash_hpf",
    "Slash_rmexp",
    "Slash_r",
    "Slash_uc",
    "Slash_dbrr2",
    "Slash_igic",
    "Slash_ms",
    "Slash_spapporu",
    "Slash_ping",
    "Slash_pas",
    "Slash_quest",
    "Slash_idm",
    "Slash_fakeadultaccount",
    "Slash_timeresetnewyear2021",
    "Slash_checkpackettime",
    "Slash_nmp",
    "Slash_sci",
    "Slash_pcs",
    "Slash_dhu",
    "Slash_useenvbox",
    "Slash_fastmoving",
    "Slash_villageclienttest",
    "Slash_sr",
    "Slash_oef",
    "Slash_obs",
    "Slash_disableskill",
    "Slash_mych",
    "Slash_invin",
    "Slash_nred",
    "Slash_setexcelfilesave",
    --"print",
    "pcall",
    "Slash_monhpr",
    "Slash_j",
    "Slash_ai",
    --"getmetatable",
    "Slash_uao",
    "CalculateExpeditionSuccessRate",
    "Slash_shownpc",
    "Slash_pverate",
    "Slash_ocs",
    "Slash_dg",
    "Slash_pm",
    "Slash_i",
    "Slash_k",
    "Slash_mc",
    "Slash_bel",
    "Slash_em",
    "Slash_bufffactorby",
    "Slash_unitscale",
    "Slash_henir",
    "Slash_h",
    "Slash_maxdamagerange",
    "Slash_housingpetpd",
    "Slash_sd",
    "Slash_pvproomshowip",
    "Slash_poff",
    "Slash_obsw",
    "Slash_wsp",
    --"tonumber",
    "Slash_adjdropexp",
    "Slash_sbf",
    "Slash_sfm",
    "Slash_pet",
    "Slash_halloweennormal",
    "Slash_gcq",
    "GetDirVecToDegree",
    "select",
    "Slash_cef",
    "Slash_rm",
    "Slash_gsp",
    "GetAttackFactorByGameType",
    "Slash_a",
    "rawget",
    "Slash_ac",
    "Slash_spc",
    "Slash_tenebrossocket",
    "assert",
    "IncludeLua",
    "Slash_swht",
    "Slash_rds",
    "Slash_csc",
    "Slash_se",
    "Slash_obsdel",
    "Slash_dwarp",
    "Slash_sf",
    "Slash_pf",
    "Slash_rs2018",
    "Slash_couple",
    "Slash_vp",
    "Slash_usered",
    "Slash_perfectnote",
    "Slash_rsrexp",
    "CalculateExtraStatValue",
    "Slash_rmbuff",
    "Slash_switchconnect",
    "Slash_fc"
}

for k, v in pairs(funct) do
    if _G[v] then
        if type(_G[v]) == "table" then
            for k1, v1 in pairs(_G[v]) do
                if k1 ~= "__index" and k1 ~= "__gc" and k1 ~= "__newindexand" then
                    if type(_G[v][k1]) == "function" then
                        table.insert(funclist, {v, k1})
                    end
                end
            end
        elseif type(_G[v]) == "function" then
            table.insert(funclist, v)
        end
    end
end

for k, v in pairs(funclist) do
    local func = _G
    local enclosing = nil
    local enclosingKey = nil
    local s = nil

    if type(v) == "table" then
        for meh, fname in ipairs(v) do
            enclosing = func
            enclosingKey = fname
            func = func[fname]
        end
        s = tostring(v[1])
    else
        enclosing = func
        enclosingKey = v
        func = func[v]
        s = "_G"
    end

    enclosing[enclosingKey] = function(...)
        local arrArgs = {...}
        print(
            "[" ..
                os.date("%Y-%m-%d %H:%M:%S") ..
                    "] Called " ..
                        s ..
                            "." ..
                                tostring(enclosingKey) ..
                                    ". In function parameters count: " .. tostring(#arrArgs) .. "."
        )
        f:write(
            "\n\n[" ..
                os.date("%Y-%m-%d %H:%M:%S") ..
                    "] Called " ..
                        s ..
                            "." ..
                                tostring(enclosingKey) ..
                                    ". In function parameters count: " .. tostring(#arrArgs) .. "."
        )
        for k1, v1 in pairs(arrArgs) do
            if type(v1) == "userdata" then
                f:write("\nArgument " .. k1 .. " = Useless (userdata)\n")
            else
                writeTable(k1, v1)
            end
        end
        local a = func(...)
        if a ~= nil then
            f:write("\nReturn of function : ")
            if type(a) == "table" then
                printTable(a)
            elseif type(a) == "userdata" then
                f:write("{\n")
                for l, m in pairs(getmetatable(a)) do
                    f:write("   " .. "[" .. l .. "] => " .. tostring(m) .. "\n")
                end
                f:write("}\n")
            else
                f:write(tostring(a) .. " => " .. type(a) .. "\n")
            end
            f:flush()
        end
        return func(...)
    end
end

print("[!] Injected. Calls dump initialized.")