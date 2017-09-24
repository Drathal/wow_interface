local addon, ns = ...
local cfg = CreateFrame("Frame")
local _, class = UnitClass("player")

-----------------------------------
--     SyianaUI-CONFIG  v6.2     --
-----------------------------------

-- functions config

cfg.activation = {
    customunitframes = true, --custom unitframes.
    customcastbars = true, --custom castbars + timer & icon.
    customactionbar = true, --false =
    charlinks = false, --true  = targetframe charlinks for armory xunamate wowprogress etc "DISABLE SET FOCUS! use /Focus in Chat.
    incombat = false, --true  = targetframe combaticon.
    hidegryphones = false, --true  = hide gryphones on the actionbars.
    hideoderhallbar = true, --true  = hide orderhallbar on the top.
    hidetalkhead = true, --true  = hide quest talking head over the actionbar.
    rangecolor = true, --actionbar range color oor oom etc.
    losecontrol = true, --hide cc frame background.
    saysapped = false, --saysapped script.
    resourcesontop = false, --true  = holypower combatpoints on the top.
    omnicc = false, --omnicc script, but better use the addon.
    hoverbind = true, --true  = /hb binds keys on actionbars.
    sgrid = true, --true  = /sgrid 64 anchor.
    tabbinder = true, --true  = bind tab key to only player in pvp areas and in raids to npcs.
    stats = false, --true  = show fps & ms, scroll down for options.
}

-- cvars

--SetCVar("CombatDamage", 0)
--SetCVar("showDispelDebuffs",0)
SetCVar("showTargetOfTarget", 0)
SetCVar("statusText", 0)
SetCVar("cameraDistanceMaxZoomFactor", 2.6)
SetCVar("chatStyle", "classic", "chatStyle")
--SetCVar("ShowClassColorInNameplate", 1)
SetCVar("floatingCombatTextCombatState", 0)
SetCVar("floatingCombatTextCombatDamage", 0)
SetCVar("noBuffDebuffFilterOnTarget", 0)

-- customcastbars config

cfg.playercastingbar = {
    scale = 1,
    pos1 = 0,
    pos2 = 350,
    timer = true,
    hide = false,
}

cfg.targetcastingbar = {
    scale = 1.3,
    pos1 = 0,
    pos2 = 330,
    timer = true,
    hide = false,
}

cfg.focuscastingbar = {
    hide = false,
}

-- stats config

cfg.stats = {
    pos1 = "BOTTOMRIGHT",
    pos2 = 0,
    pos3 = "BOTTOMRIGHT",
    pos4 = 15,
}

cfg.textures = {
    normal = "Interface\\AddOns\\SyianaUI\\inc\\textures\\gloss",
    flash = "Interface\\AddOns\\SyianaUI\\inc\\textures\\flash",
    hover = "Interface\\AddOns\\SyianaUI\\inc\\textures\\hover",
    pushed = "Interface\\AddOns\\SyianaUI\\inc\\textures\\pushed",
    checked = "Interface\\AddOns\\SyianaUI\\inc\\textures\\checked",
    equipped = "Interface\\AddOns\\SyianaUI\\inc\\textures\\gloss_grey",
    buttonback = "Interface\\AddOns\\SyianaUI\\inc\\textures\\button_background",
    buttonbackflat = "Interface\\AddOns\\SyianaUI\\inc\\textures\\button_background_flat",
    outer_shadow = "Interface\\AddOns\\SyianaUI\\inc\\textures\\outer_shadow",
}

cfg.background = {
    showbg = true, --show an background image?
    showshadow = true, --show an outer shadow?
    useflatbackground = false, --true uses plain flat color instead
    backgroundcolor = { r = 0.2, g = 0.2, b = 0.2, a = 0.3},
    shadowcolor = { r = 0, g = 0, b = 0, a = 0.9},
    classcolored = false,
    inset = 5,
}

cfg.color = {
    normal = { r = 0.37, g = 0.3, b = 0.3, },
    equipped = { r = 0.1, g = 0.5, b = 0.1, },
    classcolored = false,
}

cfg.hotkeys = {
    show = true,
    fontsize = 12,
    pos1 = { a1 = "TOPRIGHT", x = 0, y = 0 },
    pos2 = { a1 = "TOPLEFT", x = 0, y = 0 }, --important! two points are needed to make the hotkeyname be inside of the button
}

cfg.macroname = {
    show = false,
    fontsize = 12,
    pos1 = { a1 = "BOTTOMLEFT", x = 0, y = 0 },
    pos2 = { a1 = "BOTTOMRIGHT", x = 0, y = 0 }, --important! two points are needed to make the macroname be inside of the button
}

cfg.itemcount = {
    show = true,
    fontsize = 12,
    pos1 = { a1 = "BOTTOMRIGHT", x = 0, y = 0 },
}

cfg.cooldown = {
    spacing = 0,
}

cfg.font = STANDARD_TEXT_FONT

--adjust the oneletter abbrev?
cfg.adjustOneletterAbbrev = true

--scale of the consolidated tooltip
cfg.consolidatedTooltipScale = 1.2

--combine buff and debuff frame - should buffs and debuffs be displayed in one single frame?
--if you disable this it is intended that you unlock the buff and debuffs and move them apart!
cfg.combineBuffsAndDebuffs = false

-- buff frame settings

cfg.buffFrame = {
    pos = { a1 = "TOPRIGHT", af = "Minimap", a2 = "TOPLEFT", x = -35, y = -8 },
    gap = 30, --gap between buff and debuff rows
    userplaced = true, --want to place the bar somewhere else?
    rowSpacing = 10,
    colSpacing = 7,
    buttonsPerRow = 10,
    button = {
        size = 32,
    },
    icon = {
        padding = -2,
    },
    border = {
        texture = "Interface\\AddOns\\SyianaUI\\inc\\textures\\gloss",
        color = { r = 0.4, g = 0.35, b = 0.35, },
        classcolored = false,
    },
    background = {
        show = true, --show backdrop
        edgeFile = "Interface\\AddOns\\SyianaUI\\inc\\textures\\outer_shadow",
        color = { r = 0, g = 0, b = 0, a = 0.9},
        classcolored = false,
        inset = 6,
        padding = 4,
    },
    duration = {
        font = STANDARD_TEXT_FONT,
        size = 12,
        pos = { a1 = "BOTTOM", x = 0, y = 0 },
    },
    count = {
        font = STANDARD_TEXT_FONT,
        size = 11,
        pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
    },
}

-- debuff frame settings

cfg.debuffFrame = { pos = { a1 = "TOPRIGHT", af = "Minimap", a2 = "TOPLEFT", x = -35, y = -85 },
    gap = 10, --gap between buff and debuff rows
    userplaced = true, --want to place the bar somewhere else?
    rowSpacing = 10,
    colSpacing = 7,
    buttonsPerRow = 10,
    button = {
        size = 34,
    },
    icon = {
        padding = -2,
    },
    border = {
        texture = "Interface\\AddOns\\SyianaUI\\inc\\textures\\gloss",
        color = { r = 0.4, g = 0.35, b = 0.35, },
        classcolored = false,
    },
    background = {
        show = true, --show backdrop
        edgeFile = "Interface\\AddOns\\SyianaUI\\inc\\textures\\outer_shadow",
        color = { r = 0, g = 0, b = 0, a = 0.9},
        classcolored = false,
        inset = 6,
        padding = 4,
    },
    duration = {
        font = STANDARD_TEXT_FONT,
        size = 12,
        pos = { a1 = "BOTTOM", x = 0, y = 0 },
    },
    count = {
        font = STANDARD_TEXT_FONT,
        size = 11,
        pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
    },
}

-- Whoa UnitFrames Configuration

whoaUnitFrames = {}
whoaUnitFrames.config = {
    -- scale=1.0,						-- scaling for Focus-, Player- and TargetFrame. Default 1.0
    classColor = true, -- If true shows class colored HP bars.
    largeAuraSize = 27, -- Blizzard default value is 21
    smallAuraSize = 25, -- Blizzard default value is 17
    customFontSize = 10; -- Only on STATUSTEXT FALSE atm: Sets whoaUF text size for player, target and focus. Default: 10
    showToTName = false, -- If true shows the Name of the ToT beside your TargetFrame.
    petFrameOnTop = false, -- true or false - Shows the PetFrame above the PlayerFrame.
    hitIndicators = false, -- If true shows hitIndicators over PlayerFrame portrait.
    disableStatusGlow = false, -- If true disables glows for capped power bar.
    disableStatusPred = false, -- If true disables power bar predictions.
    customStatusText = true, -- Activates whoaUF statusText and activates options. Was created before Blizzard had "percent" and "numeric+percent". Blizzard statusText Only if -> "customStatusText=true"
    autoManaPercent = true, -- If true percentages shown for mana classes.
    thousandSeparators = true, -- If true shows 1.000 instead of 1000
    simpleHealth = true, -- If true shows 100K instad of 100.000.
    showMaxHealth = false, -- If true shows player / target / focus MaxHealth.
}

whoaUnitFrames.config.phrases = {
    ["1000 separator"] = ".",
    ["Dead"] = "Dead",
    ["Ghost"] = "Ghost",
    ["Offline"] = "Offline",
    ["kilo"] = " K", -- simpleHealth 1.000
    ["mega"] = " M", -- simpleHealth 1.000.000
    ["giga"] = " G", -- simpleHealth 1.000.000.000
}

if class == "PRIEST" then
    whoaUnitFrames.config.repositionPartyText = false
    -- whoaUnitFrames.config.largeAuraSize = 27
    -- whoaUnitFrames.config.smallAuraSize = 21
    -- whoaUnitFrames.config.autoManaPercent = true
    -- whoaUnitFrames.config.classColor = false
end
if class == "DRUID" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "MONK" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "MAGE" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "PALADIN" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "SHAMAN" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "WARLOCK" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "DEATHKNIGHT" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "HUNTER" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "ROGUE" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "WARRIOR" then
    whoaUnitFrames.config.repositionPartyText = false
end
if class == "DEMONHUNTER" then
    whoaUnitFrames.config.repositionPartyText = false
end

ns.cfg = cfg
