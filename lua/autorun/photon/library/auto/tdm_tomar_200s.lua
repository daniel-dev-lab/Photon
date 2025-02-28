AddCSLuaFile()

local name = "Tomar 200S Rear"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/tomar_200s.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Auxiliary"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER"
}

COMPONENT.Meta = {
	tomar_src = {
		AngleOffset = 0,
		W = 8.1,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	}
}

COMPONENT.Positions = {
	[1] = { Vector( 1.48, -3.56, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },
	[2] = { Vector( 1.48, 3.56, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },

	[3] = { Vector( 1.48, -10.64, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },
	[4] = { Vector( 1.48, 10.64, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },

	[5] = { Vector( 1.48, -17.72, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },
	[6] = { Vector( 1.48, 17.72, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },

	[7] = { Vector( 1.48, -24.8, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },
	[8] = { Vector( 1.48, 24.8, 1.13 ), Angle( 0, 90, 0 ), "tomar_src" },
}

COMPONENT.Sections = {
	["auto_tomar_200s_rear"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, { 3, "_2" }, { 4, "_1" }, { 5, "_1" }, { 6, "_2" }, { 7, "_2" }, { 8, "_1" } },
		[2] = { { 1, "_1" }, { 2, "_2" } },
		[3] = { { 3, "_2" }, { 4, "_1" } },
		[4] = { { 5, "_1" }, { 6, "_2" } },
		[5] = { { 7, "_2" }, { 8, "_1" } },
		[6] = { { 1, "_3" }, { 2, "_3" }, { 3, "_3" }, { 4, "_3" }, { 5, "_3" }, { 6, "_3" }, { 7, "_3" }, { 8, "_3" } },
		[7] = { { 7, "_2" }, { 3, "_2" }, { 2, "_2" }, { 6, "_2" } },
		[8] = { { 5, "_1" }, { 1, "_1" }, { 4, "_1" }, { 8, "_1" } },
		[9] = { { 1, "_1" }, { 3, "_2" }, { 4, "_1" }, { 7, "_2" } },
		[10] = { { 2, "_2" }, { 3, "_2" }, { 4, "_1" }, { 8, "_1" } },
		[11] = { { 3, "_2" }, { 4, "_1" }, { 7, "_2" }, { 8, "_1" } },
		[12] = { { 1, "_3" }, { 2, "_3" }, { 5, "_1" }, { 6, "_2" }, },
		-- traffic shit
		[13] = { { 8, "_3" } },
		[14] = { { 6, "_3" }, { 8, "_3" } },
		[15] = { { 4, "_3" }, { 6, "_3" }, { 8, "_3" } },
		[16] = { { 2, "_3" }, { 4, "_3" }, { 6, "_3" }, { 8, "_3" } },
		[17] = { { 1, "_3" }, { 2, "_3" }, { 4, "_3" }, { 6, "_3" } },
		[18] = { { 3, "_3" }, { 1, "_3" }, { 2, "_3" }, { 4, "_3" } },
		[19] = { { 5, "_3" }, { 3, "_3" }, { 1, "_3" }, { 2, "_3" } },
		[20] = { { 7, "_3" }, { 5, "_3" }, { 3, "_3" }, { 1, "_3" } },
		[21] = { { 7, "_3" }, { 5, "_3" }, { 3, "_3" }, },
		[22] = { { 7, "_3" }, { 5, "_3" } },
		[23] = { { 7, "_3" } },

		[24] = { { 1, "_3" }, { 2, "_3" } },
		[25] = { { 3, "_3" }, { 1, "_3" }, { 2, "_3" }, { 4, "_3" } },
		[26] = { { 5, "_3" }, { 3, "_3" }, { 1, "_3" }, { 2, "_3" }, { 4, "_3" }, { 6, "_3" } },
		[27] = { { 7, "_3" }, { 5, "_3" }, { 3, "_3" }, { 1, "_3" }, { 2, "_3" }, { 4, "_3" }, { 6, "_3" }, { 8, "_3" } },
		[28] = { { 7, "_3" }, { 5, "_3" }, { 3, "_3" }, { 4, "_3" }, { 6, "_3" }, { 8, "_3" } },
		[29] = { { 7, "_3" }, { 5, "_3" }, { 6, "_3" }, { 8, "_3" } },
		[30] = { { 7, "_3" }, { 8, "_3" } },
	}
}

COMPONENT.Patterns = {
	["auto_tomar_200s_rear"] = {
		["code1"] = { 2, 2, 3, 3, 4, 4, 5, 5, 4, 4, 3, 3, 2, 2, 3, 3, 4, 4, 5, 5, 4, 4, 3, 3, 2, 2, 0, 0, 0, 0, 6, 6, 0, 6, 6, 0, 6, 6, 0, 0, 0, 0, 6, 6, 0, 6, 6, 0, 6, 6, 0, 0, 0, 0 },
		["code2"] = {
		7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0, 7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0,
		7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0, 7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0,
		7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0, 7, 0, 7, 0, 7, 0, 8, 0, 8, 0, 8, 0,
		7, 7, 7, 8, 8, 8, 7, 7, 7, 8, 8, 8, 7, 7, 8, 8, 7, 7, 8, 8,
		7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 0, 0, 0, 0
		},
		["code3"] = {
			9, 0, 9, 0, 10, 0, 10, 0, 9, 0, 9, 0, 10, 0, 10, 0, 9, 0, 9, 0, 10, 0, 10, 0,
			11, 0, 11, 0, 12, 0, 12, 0, 11, 0, 11, 0, 12, 0, 12, 0, 11, 0, 11, 0, 12, 0, 12, 0,
			7, 0, 8, 0, 7, 0, 8, 0, 7, 0, 8, 0, 7, 0, 8, 0, 7, 0, 8, 0, 7, 0, 8, 0, 7, 0, 8, 0,
			1, 0, 1, 0, 1, 1, 1, 0, 0, 0, 6, 0, 6, 0, 6, 6, 6, 0, 0, 0
		},
		["left"] = {
			13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 0, 0, 0, 0
		},
		["right"] = {
			23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 0, 0, 0, 0
		},
		["diverge"] = {
			24, 25, 26, 27, 28, 29, 30, 0, 0, 0, 0
		}
	}
}

COMPONENT.TrafficDisconnect = { }

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_tomar_200s_rear"] = "code1"
		},
		M2 = {
			["auto_tomar_200s_rear"] = "code2"
		},
		M3 = {
			["auto_tomar_200s_rear"] = "code3"
		}
	},
	Auxiliary = {
		L = {
			["auto_tomar_200s_rear"] = "left"
		},
		R = {
			["auto_tomar_200s_rear"] = "right"
		},
		D = {
			["auto_tomar_200s_rear"] = "diverge"
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )