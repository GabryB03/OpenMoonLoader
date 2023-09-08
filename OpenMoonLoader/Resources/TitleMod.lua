local TitleID = 10
--Save the original function for not losing other titles
local originalfunc = CX2TitleManager.AddTitleInfo_LUA

--Overwrite a specific title
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

	--Look for data
	if data then

		--If the right title got loaded, we change it
		if data.m_iTitleID == TitleID then --10 = ID for Ann's Gift

			--Adding effects
			data.SOCKET_OPTION = {
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,
				2350,			
				2350,
				2350,
				2350,
				2350,	
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				60419,
				41179,
				20516,
				20508,
				31472,
				31471,
				41174,
				35005,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				1610,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				60128,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				1810,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				40625,
				5620,
				5620,
				5620,
				5620,
				5620,
				5620,
				5620,
				5620,
				5620,
				5620,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				41109,
				5513,
				31393,
				35326,
				31783,
				31794,
				31438,
				35051,
				31804,
				31805,
				31806,
				35325,
				32093,
				32092,
				32109,
				32133,
				32134,
				32135,
				32136,
				32141,
				32142,
				35336,
				35337,
				35338,
				35340,
				35345,
				35349,
				32145,
				60102,
				31447,
				74010,
				35348,
				32152,
				32160,
				32161,
				32162,
				32163,
				32164,
				32165,
				60106,
				32183,
				32188,
				32189,
				32138,
				32146,
				47509,
				99234,
				99235,
				99247,
				99248,
				99249,
				99253,
				99254,
				99255,
				99256,
				1350, --50% HP
				1350, --50% HP
				1350, --50% HP
				1350, --50% HP
				1350, --50% HP
				60419, --MAX MP 100
				60419, --MAX MP 100
				60419, --MAX MP 100
				60419, --MAX MP 100
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
				40360, --MP Gain when attacking +15%
                40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40530, --MP Gain when attacked +15%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				40020, --Attack Speed +10%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				1715,  --Movement Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				40930, --Jump Speed +15%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60310, --Physical Attack +10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				60610, --Magical Attack+10%
				40300, --Addtional damage 50%
				40300, --Addtional damage 50%
				40300, --Addtional damage 50%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				215433, --Hyper Active Skill Damage +5%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				35616, --All Skill Damage +10%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				47605, --Critical Damage +5%
				2620, --20% critical
				2620, --20% critical
				2620, --20% critical
				2620, --20% critical
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				74043, --Damage dealt to Boss Monsters +10%
				40700, --reduced damage 50%
				40700, --reduced damage 50%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32158, --Physical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				32159, --Magical Defense +10%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				43410, --Recovery Item Effectiveness +5%
				2410, --Awakening Charge Speed +10%
			    2410, --Awakening Charge Speed +10%
			    2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				2410, --Awakening Charge Speed +10%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				1210, --Awakening Time +15%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				43620, --Damage dealt by Boss Monsters -10%
				32155, --Decrease target's Element Resistance by 20 for 7 seconds when attacking (Max: 5 stacks)
				32156, --Increase next attack damage by 5% when cause 10 hits when attacking
				32154, --All cooldowns are decreased by 10% when hitting 10 times.
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
				32182, --When attacked, 3% chance to activate Elrianode Protection for 5 sec. (Defense is increased by 50%) (Cooldown: 1 minute
                32184, --Attack Speed increased by 15% for 30 sec. when awakened. (Cooldown: 1 minute)
				32184, --Command Attack Damage increased by 15% for 30 sec. when awakened. (Cooldown: 1 minute)
				32184, --All Skill Damage increased by 15% for 30 sec. when awakened. (Cooldown: 1 minute)
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				60205, --Special Active Skill damage +5%
				74042, --Activate Fever when awakening (Cooldown of 180 seconds) cannot be overlapped (Dungeon)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				32145, --3% chance of summoning CODE-Maya when attacking (+20% Physical Attack, +20% Magic Attack, +20% Attack Speed for 6 seconds)
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41203, --5% chance of decreasing target's attack by 90% for 2 seconds when hit
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				41204, --5% chance of decreasing target's defense by 90% for 2 seconds when attacking
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				32146, --When attacking, 5% chance of casting the buff Potential Opened (Increased attack by 25%.) for 6 seconds.
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31783, --3% chance of additional Vibration hit (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31794, --3% chance of summoning Desert Storm (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31438, --3% chance to attack with a Blast (Dungeon)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized) 
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				31784, --3% chance to create a Speed Aura (Increase Attack Speed 5%, Stackable up to 3 Times) when attacking (Not Overlapped)(Speed Boost Normalized)
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				35022, --When attacking, 5% chance to recover 1% HP
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32157, --5% chance of super armor for 6 seconds when hit (all damage reduced by 30%) (Cooldown of 30 seconds) (Dungeon)
				32153, --When hit by a killing blow, leave 1 HP and become invincible for 3 seconds. (Cooldown of 180 seconds) cannot be overlapped (Dungeon)
				32153 --When hit by a killing blow, leave 1 HP and become invincible for 3 seconds. All Skill in the skill slot counts cooldown. (Cooldown of 180 seconds) cannot be overlapped (Arena)
			}
		end
	end

	--Write data back to original title loader from Elsword.
	return originalfunc(self, data)
end