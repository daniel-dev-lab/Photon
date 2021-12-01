AddCSLuaFile()

local name = "Whelen 400 Mounted"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/whelen_400_6x6.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}

COMPONENT.Meta = {
	whelen_400 = {
		AngleOffset = -90,
		W = 7.25,
		H = 6.9,
		Sprite = "sprites/emv/freedom_main",
		WMult = 1,
		Scale = 1,
		EmitArray = {
			Vector( 1.75, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.75, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 1.09, 1.1 ), Angle( 0, 0, 0 ), "whelen_400" },
	[2] = { Vector( 0, 1.09, -0.83 ), Angle( 0, 0, 0 ), "whelen_400" },

}

COMPONENT.Sections = {
	["auto_light_dome"] = {
		[1] = { { 1, "_1" }, { 2, "_1" } },
	},
}

COMPONENT.Patterns = {
	["auto_light_dome"] = {
		["code1"] = { 1, 1, 1, 0, 0, 0 },
		["code2"] = { 1, 1, 0, 0 },
		["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

		["code1A"] = { 0, 0, 0, 1, 1, 1 },
		["code2A"] = { 0, 0, 1, 1 },
		["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

		["code1B"] = { 1, 1, 1, 0, 0, 0 },
		["code2B"] = { 1, 1, 0, 0 },
		["code3B"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_light_dome"] = "code1", },
		M2 = { ["auto_light_dome"] = "code2", },
		M3 = { ["auto_light_dome"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
