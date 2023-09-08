local DUNGEONID = 30000 -- Dungeon ID, Tree Of El.

local function createDGStartButtons()

	g_pButton_Ruben_El_Tree = g_pUIDialog:CreateButton()
	
	g_pUIDialog:AddControl(g_pButton_Ruben_El_Tree)
	
	g_pButton_Ruben_El_Tree:SetName("El")
	g_pButton_Ruben_El_Tree:AddDummyInt(DUNGEONID)
	g_pButton_Ruben_El_Tree:AddDummyInt(DETAIL_LOCAL_TYPE.DLT_DUNGEON)
	g_pButton_Ruben_El_Tree:SetNormalTex("DLG_Common_Button00_NEW.tga", "El_tree_N")
	
	IconAni(g_pButton_Ruben_El_Tree, "DLG_Common_Button00_NEW.tga", "El_tree_O")
	
	g_pButton_Ruben_El_Tree:SetDownTex("DLG_Common_Button00_NEW.tga", "El_tree_O")
	
	g_pButton_Ruben_El_Tree:SetNormalPoint({
	
		ADD_SIZE_X = 4,
		ADD_SIZE_Y = 4,
		
 		"LEFT_TOP\t\t= D3DXVECTOR2(447-196,344-140-44)",
		"COLOR\t\t\t= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		
		CHANGE_TIME = 0
		
	})
	
	g_pButton_Ruben_El_Tree:SetOverPoint({
	
		"LEFT_TOP\t\t= D3DXVECTOR2(434+6-196,327+4-140-44)",
		"COLOR\t\t\t= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		
		CHANGE_TIME = 0
		
	})
	
	g_pButton_Ruben_El_Tree:SetDownPoint({
	
		ADD_SIZE_X = -4,
		ADD_SIZE_Y = -4,
		
		"LEFT_TOP\t\t= D3DXVECTOR2(434+2+6-196,327+4+2-140-44)",
		"COLOR\t\t\t= D3DXCOLOR(1.0,1.0,1.0,1.0)",
		
		CHANGE_TIME = 0
		
	})
	
	g_pButton_Ruben_El_Tree:SetCustomMsgMouseUp(LOCAL_MAP_UI_CUSTOM_MSG.LMUCM_DUNGEON_CLICKED)
	g_pButton_Ruben_El_Tree:SetCustomMsgMouseOver(LOCAL_MAP_UI_CUSTOM_MSG.LMUCM_DUNGEON_MOUSE_OVER)
	g_pButton_Ruben_El_Tree:SetCustomMsgMouseOut(LOCAL_MAP_UI_CUSTOM_MSG.LMUCM_DUNGEON_MOUSE_OUT)
	
end

if not IncludeLuaO then

	IncludeLuaO = IncludeLua
	f = io.open("_ilua.txt", "wb")
	
end

IncludeLua = function(luaname)

	f:write(tostring(luaname) .. "\n")
	f:flush()
	
	if luaname == "DLG_Map_Local_Ruben_Icon_NEW.lua" then
	
		f:write("Executing replacement code\n")
		f:flush()
		
		createDGStartButtons()
		
		f:write("Lua replaced\n")
		f:flush()
		
	else
	
		IncludeLuaO(luaname)
		
	end
	
end

f:write("Loaded\n")
f:flush()