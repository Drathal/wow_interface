local K, C, L = unpack(select(2, ...))

local _, ns = ...
local oUF = ns.oUF or oUF

-- Colors
oUF.colors.castColor = {0.85, 0.77, 0.36}
oUF.colors.castNoInterrupt = {1, 0, 0}
oUF.colors.disconnected = {0.53, 0.54, 0.53}
oUF.colors.fallback = {1, 1, 0.8}
oUF.colors.health = {0.29, 0.67, 0.30}
oUF.colors.interruptible = {0.31, 0.45, 0.63, 0.5}
oUF.colors.white = {1, 1, 1}

oUF.colors.runes = {
	["CD"] = {0.7, 0.7, 0.7},
	["READY"] = {0.31, 0.45, 0.63},
}

oUF.colors.reaction = {
	[1] = {0.87, 0.37, 0.37}, -- Hated
	[2] = {0.87, 0.37, 0.37}, -- Hostile
	[3] = {0.87, 0.37, 0.37}, -- Unfriendly
	[4] = {0.85, 0.77, 0.36}, -- Neutral
	[5] = {0.29, 0.67, 0.30}, -- Friendly
	[6] = {0.29, 0.67, 0.30}, -- Honored
	[7] = {0.29, 0.67, 0.30}, -- Revered
	[8] = {0.29, 0.67, 0.30}, -- Exalted
}

oUF.colors.power = {
	["ALTPOWER"] = {0.00, 1.00, 1.00},
	["AMMOSLOT"] = {0.80, 0.60, 0.00},
	["CHI"] = {0.71, 1.00, 0.92},
	["ENERGY"] = {0.65, 0.63, 0.35},
	["FOCUS"] = {0.71, 0.43, 0.27},
	["FUEL"] = {0.00, 0.55, 0.50},
	["FURY"] = {0.78, 0.26, 0.99},
	["HOLY_POWER"] = {0.95, 0.90, 0.60},
	["INSANITY"] = {0.40, 0.00, 0.80},
	["LUNAR_POWER"] = {0.93, 0.51, 0.93},
	["MAELSTROM"] = {0.00, 0.50, 1.00},
	["MANA"] = {0.31, 0.45, 0.63},
	["PAIN"] = {1.00, 0.61, 0.00},
	["POWER_TYPE_PYRITE"] = {0.60, 0.09, 0.17},
	["POWER_TYPE_STEAM"] = {0.55, 0.57, 0.61},
	["RAGE"] = {0.69, 0.31, 0.31},
	["RUNES"] = {0.55, 0.57, 0.61},
	["RUNIC_POWER"] = {0.00, 0.82, 1.00},
	["SOUL_SHARDS"] = {0.50, 0.32, 0.55},
}

-- To change class colors use a custom class color addon like Class Colors
oUF.colors.class = {
	["DEATHKNIGHT"] = {0.77, 0.12, 0.24},
	["DEMONHUNTER"] = {0.64, 0.19, 0.79},
	["DRUID"] = {1.00, 0.49, 0.03},
	["HUNTER"] = {0.67, 0.84, 0.45},
	["MAGE"] = {0.41, 0.80, 1.00},
	["MONK"] = {0.00, 1.00, 0.59},
	["PALADIN"] = {0.96, 0.55, 0.73},
	["PRIEST"] = {0.86, 0.92, 0.98},
	["ROGUE"] = {1.00, 0.95, 0.32},
	["SHAMAN"] = {0.16, 0.31, 0.61},
	["WARLOCK"] = {0.58, 0.51, 0.79},
	["WARRIOR"] = {0.78, 0.61, 0.43},
}

oUF.colors.totems = {
	[1] = oUF.colors.class[K.Class], -- Totem 1
	[2] = oUF.colors.class[K.Class], -- Totem 2
	[3] = oUF.colors.class[K.Class], -- Totem 3
	[4] = oUF.colors.class[K.Class], -- Totem 4
}

K.Colors = oUF.colors
