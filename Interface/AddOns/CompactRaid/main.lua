local ADDON = ...
local LSM = _G.LibStub("LibSharedMedia-3.0") 
local function path(lib, file)
	return ("Interface\\AddOns\\%s\\Media\\%s\\%s"):format(ADDON, lib, file)
end

-- borders
LSM:Register("border", "GP: Tooltip", path("borders", "gUI4_Border_256x32_Tooltip_Warcraft.tga"))

-- statusbars
LSM:Register("statusbar", "GP: Normal", path("statusbars", "gUI4_StatusBar_512x64_Normal_Warcraft.tga"))
LSM:Register("statusbar", "GP: Resource", path("statusbars", "gUI4_StatusBar_512x64_Resource_Warcraft.tga"))
LSM:Register("statusbar", "GP: Power", path("statusbars", "gUI4_StatusBar_512x64_Power_Warcraft.tga"))
LSM:Register("statusbar", "GP: Dark", path("statusbars", "gUI4_StatusBar_512x64_Dark_Warcraft.tga"))

-- statusbar backdrops
LSM:Register("statusbar", "GP: Backdrop", path("statusbars", "gUI4_StatusBar_512x64_Backdrop_Warcraft.tga"))

-- statusbar overlays
-- LSM:Register("statusbar", "GP Overlay (Standard)", path("statusbars", "gUI4_StatusBar_512x64_Overlay_Warcraft.tga"))
-- LSM:Register("statusbar", "GP Overlay (Resource)", path("statusbars", "gUI4_StatusBar_512x64_ResourceOverlay_Warcraft.tga"))

-- fonts
LSM:Register("font", "DejaVuSans", path("fonts", "DejaVuSans.ttf"))
LSM:Register("font", "DejaVuSans-Bold", path("fonts", "DejaVuSans-Bold.ttf"))
LSM:Register("font", "DejaVuSansCondensed", path("fonts", "DejaVuSansCondensed.ttf"))
LSM:Register("font", "DejaVuSansCondensed-Bold", path("fonts", "DejaVuSansCondensed-Bold.ttf"))
LSM:Register("font", "DejaVuSans-ExtraLight", path("fonts", "DejaVuSans-ExtraLight.ttf"))

