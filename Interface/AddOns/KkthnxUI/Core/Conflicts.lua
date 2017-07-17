local K, C, L = unpack(select(2, ...))

-- Lua API
local _G = _G

-- Wow API
local DisableAddOn = _G.DisableAddOn
local ReloadUI = _G.ReloadUI

-- Prevent users config errors and using other UIs over mine.
local CheckAddOn = K.CheckAddOn

-- If a UI does not use a color to color their name in their TOC then we will default it to |cffffd100UINAME|r
local buttonText, disableText
if K.CheckAddOn("ShestakUI") then
	buttonText = "|cffffd100ShestakUI|r"
	disableText = "ShestakUI"
elseif K.CheckAddOn("ElvUI") then
	buttonText = "|cff1784d1ElvUI|r"
	disableText = "ElvUI"
elseif K.CheckAddOn("Tukui") then
	buttonText = "|cffff8000Tukui|r"
	disableText = "Tukui"
elseif K.CheckAddOn("DiabolicUI") then
	buttonText = "|cff8a0707Diabolic|r|cffffffffUI|r"
	disableText = "DiabolicUI"
else
	-- Fallbacks
	buttonText = UNKNOWN
	disableText = UNKNOWN
end

StaticPopupDialogs["KKTHNXUI_INCOMPATIBLE"] = {
	text = "Oh no, you have |cff3c9bedKkthnxUI|r and "..buttonText.." enabled at the same time. Select an addon to disable to prevent conflicts!",
	button1 = "|cff3c9bedKkthnxUI|r",
	button2 = buttonText,
	OnAccept = function() DisableAddOn("KkthnxUI") ReloadUI() end,
	OnCancel = function() DisableAddOn(disableText) ReloadUI() end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = false,
	preferredIndex = 3,
	showAlert = 1
}

if K.CheckAddOn("DiabolicUI") or K.CheckAddOn("ElvUI") or K.CheckAddOn("Tukui") or K.CheckAddOn("ShestakUI") then
	StaticPopup_Show("KKTHNXUI_INCOMPATIBLE")
	return
end

-- Actionbars
if C.ActionBar.RightBars > 3 then
	C.ActionBar.RightBars = 3
end

if C.ActionBar.BottomBars > 3 then
	C.ActionBar.BottomBars = 3
end

if C.ActionBar.BottomBars == 3 and C.ActionBar.RightBars == 3 then
	C.ActionBar.BottomBars = 3
	C.ActionBar.RightBars = 2
end

if C.ActionBar.SplitBars == true then
	C.ActionBar.BottomBars = 3
	C.ActionBar.RightBars = 2
end

if C.ActionBar.BottomBars < 1 then
	C.ActionBar.BottomBars = 1
end

if C.ActionBar.PetBarHorizontal == true then
	C.ActionBar.StanceBarHorizontal = false
end

-- Errors
if C.Error.Black == true and C.Error.White == true then
	C.Error.White = false
end

if C.Error.Combat == true then
	C.Error.Black = false
	C.Error.White = false
end

-- Auto-overwrite script config is X addon is found
-- Here we use our own functions to check for addons.
if CheckAddOn("SexyMap") or CheckAddOn("bdMinimap") or CheckAddOn("BasicMinimap") or CheckAddOn("RicoMiniMap") or CheckAddOn("Chinchilla") then
	C.Minimap.Enable = false
end

if CheckAddOn("XPerl") or CheckAddOn("Stuf") or CheckAddOn("PitBull4") or CheckAddOn("ShadowedUnitFrames") or CheckAddOn("oUF_Abu") then
	C.Unitframe.Enable = false
end

if (CheckAddOn("Dominos") or CheckAddOn("Bartender4") or CheckAddOn("RazerNaga") or CheckAddOn("daftMainBar")) or (CheckAddOn("ConsolePortBar") and CheckAddOn("ConsolePort")) then -- We have to check for main ConsolePort addon too.
	C.ActionBar.Enable = false
end

if CheckAddOn("WorldQuestTracker") or CheckAddOn("Mapster") or CheckAddOn("WorldQuestsList") then
	C.WorldMap.SmallWorldMap = false
end

if CheckAddOn("BadBoy") then
	C.Chat.SpamFilter = false
end

if CheckAddOn("AdiBags") or CheckAddOn("ArkInventory") or CheckAddOn("cargBags_Nivaya") or CheckAddOn("cargBags") or CheckAddOn("Bagnon") or CheckAddOn("Combuctor") or CheckAddOn("TBag") or CheckAddOn("BaudBag") then
	C.Bags.Enable = false
end

if CheckAddOn("Prat-3.0") or CheckAddOn("Chatter") then
	C.Chat.Enable = false
end

if CheckAddOn("TidyPlates") or CheckAddOn("Aloft") or CheckAddOn("Kui_Nameplates") or CheckAddOn("bdNameplates") then
	C.Nameplates.Enable = false
end

if CheckAddOn("TipTop") or CheckAddOn("TipTac") or CheckAddOn("FreebTip") or CheckAddOn("bTooltip") or CheckAddOn("PhoenixTooltip") or CheckAddOn("Icetip") or CheckAddOn("rTooltip") then
	C.Tooltip.Enable = false
end

if CheckAddOn("Pawn") then
	C.Tooltip.ItemIcon = false
end

if CheckAddOn("TipTacTalents") then
	C.Tooltip.Talents = false
end

if CheckAddOn("ConsolePortBar") then
	C.DataBars.Artifact = false
	C.DataBars.Experience = false
end

if CheckAddOn("cInterrupt") then
	C.Announcements.Interrupt = false
end

if CheckAddOn("NiceBubbles") then
	C.Skins.ChatBubble = false
end

if CheckAddOn("ChatSounds") then
	C.Chat.WhispSound = false
end

if CheckAddOn("MBB") or CheckAddOn("MinimapButtonFrame") then
	C.Minimap.CollectButtons = false
end

if K.CheckAddOn("OmniCC") or K.CheckAddOn("ncCooldown") or K.CheckAddOn("CooldownCount") then
	C.Cooldown.Enable = false
end
