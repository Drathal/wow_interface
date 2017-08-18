local D, C, L = unpack(select(2, ...))

local _G = _G
local GameFontNormal = _G.GameFontNormal

C["debug"] = true

C["player"] = {
    ["show"] = true,
    ["color"] = { 0.25, 0.5, 1, 1 },
    ["colorRested"] = { 0.5, 0.25, 1, 1 }
}

C["sparkXP"] = {
    ["max"] = 10,
    ["format"] = "%s XP",
    ["font"] = { GameFontNormal:GetFont(), 12, "OUTLINE", 0 },
    ["fontColor"] = { 1, .82, 0, 1 },
    ["xSpread"] = { - 15, 15 },
    ["ySpread"] = { - 120, - 80 },
    ["durationSpread"] = { 1, 2 },
    ["y"] = -20
}

C["sparkModel"] = {
    ["size"] = 64,
    ["model"] = "spells/7fx_mage_aegwynnsascendance_statehand.m2"
    -- spells/7fx_mage_aegwynnsascendance_statehand.m2
    -- spells/voljin_serpentward_missile.m2
    -- spells/7fx_druid_halfmoon_missile.m2
}

C["bar"] = {
    ["show"] = true,
    ["texture"] = "Interface\\AddOns\\XpFlag\\media\\bar.blp",
    ["backdrop"] = [[Interface\BUTTONS\WHITE8X8]],
	["edge"] = [[Interface\BUTTONS\WHITE8X8]],
	["height"] = 1,
	["animationSpeed"] = 6
}

C["mark"] = {
	["width"] = 15,
	["height"] = 15,
	["flip"] = true,
	["animationSpeed"] = 6,
	["texture"] = {
		["default"] = "Interface\\AddOns\\XpFlag\\media\\circle.tga",
		["below"] = "Interface\\AddOns\\XpFlag\\media\\circle-minus.tga",
		["over"] = "Interface\\AddOns\\XpFlag\\media\\circle-plus.tga",
	}
}
