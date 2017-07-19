local K, C, L = unpack(select(2, ...))

-- Lua API
local _G = _G
local print = print
local string_format = string.format

-- Wow API
local ChangeChatColor = _G.ChangeChatColor
local ChatFrame_AddChannel = _G.ChatFrame_AddChannel
local ChatFrame_AddMessageGroup = _G.ChatFrame_AddMessageGroup
local ChatFrame_RemoveAllMessageGroups = _G.ChatFrame_RemoveAllMessageGroups
local ChatFrame_RemoveChannel = _G.ChatFrame_RemoveChannel
local CreateFrame = _G.CreateFrame
local FCF_DockFrame = _G.FCF_DockFrame
local FCF_OpenNewWindow = _G.FCF_OpenNewWindow
local FCF_ResetChatWindows = _G.FCF_ResetChatWindows
local FCF_SavePositionAndDimensions = _G.FCF_SavePositionAndDimensions
local FCF_SetChatWindowFontSize = _G.FCF_SetChatWindowFontSize
local FCF_SetLocked = _G.FCF_SetLocked
local FCF_SetWindowName = _G.FCF_SetWindowName
local FCF_StopDragging = _G.FCF_StopDragging
local GetCVar = _G.GetCVar
local GetCVarBool = _G.GetCVarBool
local GUILD_EVENT_LOG = _G.GUILD_EVENT_LOG
local LOOT, GENERAL, TRADE = _G.LOOT, _G.GENERAL, _G.TRADE
local NUM_CHAT_WINDOWS = _G.NUM_CHAT_WINDOWS
local PlaySoundFile = _G.PlaySoundFile
local PlaySoundKitID = _G.PlaySoundKitID
local ReloadUI = _G.ReloadUI
local SetCVar = _G.SetCVar
local StaticPopup_Show = _G.StaticPopup_Show
local ToggleChatColorNamesByClassGroup = _G.ToggleChatColorNamesByClassGroup
local UIFrameFadeOut = _G.UIFrameFadeOut

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: ActionBars, SetActionBarToggles, _G.SLASH_VERSION1, DisableAddOn, KkthnxUIData
-- GLOBALS: ChatFrame4, DEFAULT_CHAT_FRAME, KkthnxUIDataPerChar, InstallationMessageFrame
-- GLOBALS: _G.SLASH_CONFIGURE1, _G.SLASH_RESETUI1, ChatFrame1, ChatFrame2, ChatFrame3, UIParent
-- GLOBALS: _G.SLASH_CONFIGURE2, UIConfig
-- GLOBALS: InstallStepComplete, InterfaceOptionsActionBarsPanelPickupActionKeyDropDown
-- GLOBALS: UIConfigMain

local KkthnxUIInstall = CreateFrame("Frame", nil, UIParent)

function KkthnxUIInstall:ChatSetup()
	InstallStepComplete.Message = "Chat Set"
	InstallStepComplete:Show()
	FCF_ResetChatWindows()
	FCF_SetLocked(ChatFrame1, 1)
	FCF_DockFrame(ChatFrame2)
	FCF_SetLocked(ChatFrame2, 1)
	FCF_OpenNewWindow(LOOT)
	FCF_DockFrame(ChatFrame3)
	FCF_SetLocked(ChatFrame3, 1)
	FCF_OpenNewWindow(TRADE)
	FCF_DockFrame(ChatFrame4)
	FCF_SetLocked(ChatFrame4, 1)

	for i = 1, NUM_CHAT_WINDOWS do
		local frame = _G[string_format("ChatFrame%s", i)]

		-- move general bottom left
		if i == 1 then
			frame:ClearAllPoints()
			frame:SetPoint(C.Position.Chat[1], C.Position.Chat[2], C.Position.Chat[3], C.Position.Chat[4], C.Position.Chat[5])
		end

		FCF_SavePositionAndDimensions(frame)
		FCF_StopDragging(frame)

		-- set default font size
		FCF_SetChatWindowFontSize(nil, frame, 12)

		-- rename windows general because moved to chat #3
		if i == 1 then
			FCF_SetWindowName(frame, GENERAL)
		elseif i == 2 then
			FCF_SetWindowName(frame, GUILD_EVENT_LOG)
		elseif i == 3 then
			FCF_SetWindowName(frame, TRADE)
		elseif i == 4 then
			FCF_SetWindowName(frame, LOOT)
		end
	end

	-- Set more chat groups
	ChatFrame_RemoveAllMessageGroups(ChatFrame1)
	ChatFrame_AddMessageGroup(ChatFrame1, "ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "AFK")
	ChatFrame_AddMessageGroup(ChatFrame1, "BATTLEGROUND_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "BATTLEGROUND")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_ALLIANCE")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_HORDE")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_NEUTRAL")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_CONVERSATION")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_INLINE_TOAST_ALERT")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "DND")
	ChatFrame_AddMessageGroup(ChatFrame1, "EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "ERRORS")
	ChatFrame_AddMessageGroup(ChatFrame1, "GUILD_ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "GUILD")
	ChatFrame_AddMessageGroup(ChatFrame1, "IGNORED")
	ChatFrame_AddMessageGroup(ChatFrame1, "INSTANCE_CHAT_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "INSTANCE_CHAT")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_BOSS_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_SAY")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_YELL")
	ChatFrame_AddMessageGroup(ChatFrame1, "OFFICER")
	ChatFrame_AddMessageGroup(ChatFrame1, "PARTY_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "PARTY")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID_WARNING")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID")
	ChatFrame_AddMessageGroup(ChatFrame1, "SAY")
	ChatFrame_AddMessageGroup(ChatFrame1, "SYSTEM")
	ChatFrame_AddMessageGroup(ChatFrame1, "WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "YELL")

	ChatFrame_RemoveAllMessageGroups(ChatFrame3)
	ChatFrame_RemoveAllMessageGroups(ChatFrame4)
	ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_FACTION_CHANGE")
	ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_GUILD_XP_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_HONOR_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_XP_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame4, "CURRENCY")
	ChatFrame_AddMessageGroup(ChatFrame4, "LOOT")
	ChatFrame_AddMessageGroup(ChatFrame4, "MONEY")
	ChatFrame_AddMessageGroup(ChatFrame4, "SKILL")
	ChatFrame_AddChannel(ChatFrame1, GENERAL)
	ChatFrame_RemoveChannel(ChatFrame1, L.Chat.Trade)
	ChatFrame_AddChannel(ChatFrame3, L.Chat.Trade)

	if K.IsDeveloper() and K.IsDeveloperRealm() then
		SetCVar("scriptErrors", 1)
	end

	-- Enable class color automatically on login and each character without doing /configure each time.
	ToggleChatColorNamesByClassGroup(true, "ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND_LEADER")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL1")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL10")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL11")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL2")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL3")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL4")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL5")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL6")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL7")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL8")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL9")
	ToggleChatColorNamesByClassGroup(true, "EMOTE")
	ToggleChatColorNamesByClassGroup(true, "GUILD_ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "GUILD")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT_LEADER")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT")
	ToggleChatColorNamesByClassGroup(true, "OFFICER")
	ToggleChatColorNamesByClassGroup(true, "PARTY_LEADER")
	ToggleChatColorNamesByClassGroup(true, "PARTY")
	ToggleChatColorNamesByClassGroup(true, "RAID_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID_WARNING")
	ToggleChatColorNamesByClassGroup(true, "RAID")
	ToggleChatColorNamesByClassGroup(true, "SAY")
	ToggleChatColorNamesByClassGroup(true, "WHISPER")
	ToggleChatColorNamesByClassGroup(true, "YELL")

	--Adjust Chat Colors
	--General
	ChangeChatColor("CHANNEL1", 195/255, 230/255, 232/255)
	--Trade
	ChangeChatColor("CHANNEL2", 232/255, 158/255, 121/255)
	--Local Defense
	ChangeChatColor("CHANNEL3", 232/255, 228/255, 121/255)
end

function KkthnxUIInstall:CVarSetup()
	SetCVar("alwaysShowActionBars", 1)
	SetCVar("autoLootDefault", 0)
	SetCVar("autoOpenLootHistory", 0)
	SetCVar("autoQuestProgress", 1)
	SetCVar("autoQuestWatch", 1)
	SetCVar("cameraDistanceMaxZoomFactor", 2.6)
	SetCVar("chatMouseScroll", 1)
	SetCVar("chatStyle", "classic")
	SetCVar("colorblindMode", 0)
	SetCVar("countdownForCooldowns", 0)
	SetCVar("gameTip", 0)
	SetCVar("lockActionBars", 1)
	SetCVar("lootUnderMouse", 0)
	SetCVar("nameplateShowSelf", 0)
	SetCVar("removeChatDelay", 1)
	SetCVar("RotateMinimap", 0)
	SetCVar("screenshotQuality", 10)
	SetCVar("showArenaEnemyFrames", 0)
	SetCVar("ShowClassColorInNameplate", 1)
	SetCVar("showTimestamps", "none")
	SetCVar("showTutorials", 0)
	SetCVar("showVKeyCastbar", 1)
	SetCVar("SpamFilter", 0)
	SetCVar("UberTooltips", 1)
	SetCVar("violenceLevel", 5)
	SetCVar("WhisperMode", "inline")
	SetCVar("WholeChatWindowClickable", 0)

	InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:SetValue("SHIFT")
	InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:RefreshValue()

	InstallStepComplete.Message = "CVars Set"
	InstallStepComplete:Show()
end

function KkthnxUIInstall:PositionSetup()
	-- Reset saved variables on char
	KkthnxUIDataPerChar = {}

	KkthnxUIDataPerChar.AutoInvite = false
	KkthnxUIDataPerChar.BarsLocked = false
	KkthnxUIDataPerChar.SplitBars = true
	KkthnxUIDataPerChar.RightBars = C.ActionBar.RightBars
	KkthnxUIDataPerChar.BottomBars = C.ActionBar.BottomBars

	-- Reset movable stuff into original positions
	if KkthnxUIDataPerChar.Movers then KkthnxUIDataPerChar.Movers = {} end
end

local KkthnxUIVersionFrame = CreateFrame("Button", "KkthnxUIVersionFrame", UIParent)
KkthnxUIVersionFrame:SetSize(300, 36)
KkthnxUIVersionFrame:SetPoint("CENTER")
KkthnxUIVersionFrame:SetTemplate("Default")
KkthnxUIVersionFrame:SetBackdropBorderColor(K.Color.r, K.Color.g, K.Color.b)
KkthnxUIVersionFrame:FontString("Text", C.Media.Font, 13, C.Media.Font_Style)
KkthnxUIVersionFrame.Text:SetPoint("CENTER")
KkthnxUIVersionFrame.Text:SetText("|cff3c9bed" ..K.Title.." v".. K.Version .." |cffffffff Coded by: Kkthnx|r")
KkthnxUIVersionFrame:SetScript("OnClick", function()
	KkthnxUIVersionFrame:Hide()
end)
KkthnxUIVersionFrame:Hide()

local KkthnxUIInstallFrame = CreateFrame("Frame", "KkthnxUIInstallFrame", UIParent)
KkthnxUIInstallFrame:SetSize(400, 400)
KkthnxUIInstallFrame:SetPoint("CENTER")
KkthnxUIInstallFrame:SetTemplate("Default")
KkthnxUIInstallFrame:Hide()

local StatusBar = CreateFrame("StatusBar", nil, KkthnxUIInstallFrame)
StatusBar:SetStatusBarTexture(C.Media.Texture)
StatusBar:SetPoint("BOTTOM", KkthnxUIInstallFrame, "BOTTOM", 0, 60)
StatusBar:SetHeight(20)
StatusBar:SetWidth(KkthnxUIInstallFrame:GetWidth() -44)
StatusBar:SetFrameStrata("HIGH")
StatusBar:SetFrameLevel(6)
StatusBar:Hide()

local StatusBarBorder = CreateFrame("Frame", nil, StatusBar)
StatusBarBorder:SetTemplate("Default")
StatusBarBorder:SetPoint("TOPLEFT", StatusBar, -4, 4)
StatusBarBorder:SetPoint("BOTTOMRIGHT", StatusBar, 4, -4)
StatusBarBorder:SetFrameStrata("HIGH")
StatusBarBorder:SetFrameLevel(5)

local Header = KkthnxUIInstallFrame:CreateFontString(nil, "OVERLAY")
Header:SetFont(C.Media.Font, 18, "OUTLINE")
Header:SetTextColor(60/255, 155/255, 237/255)
Header:SetPoint("TOP", KkthnxUIInstallFrame, "TOP", 0, -20)

local TextOne = KkthnxUIInstallFrame:CreateFontString(nil, "OVERLAY")
TextOne:SetJustifyH("LEFT")
TextOne:SetFont(C.Media.Font, 12, C.Media.Font_Style)
TextOne:SetWidth(KkthnxUIInstallFrame:GetWidth() -40)
TextOne:SetPoint("TOPLEFT", KkthnxUIInstallFrame, "TOPLEFT", 20, -60)

local TextTwo = KkthnxUIInstallFrame:CreateFontString(nil, "OVERLAY")
TextTwo:SetJustifyH("LEFT")
TextTwo:SetFont(C.Media.Font, 12, C.Media.Font_Style)
TextTwo:SetWidth(KkthnxUIInstallFrame:GetWidth() -40)
TextTwo:SetPoint("TOPLEFT", TextOne, "BOTTOMLEFT", 0, -20)

local TextThree = KkthnxUIInstallFrame:CreateFontString(nil, "OVERLAY")
TextThree:SetJustifyH("LEFT")
TextThree:SetFont(C.Media.Font, 12, C.Media.Font_Style)
TextThree:SetWidth(KkthnxUIInstallFrame:GetWidth() -40)
TextThree:SetPoint("TOPLEFT", TextTwo, "BOTTOMLEFT", 0, -20)

local TextFour = KkthnxUIInstallFrame:CreateFontString(nil, "OVERLAY")
TextFour:SetJustifyH("LEFT")
TextFour:SetFont(C.Media.Font, 12, C.Media.Font_Style)
TextFour:SetWidth(KkthnxUIInstallFrame:GetWidth() -40)
TextFour:SetPoint("TOPLEFT", TextThree, "BOTTOMLEFT", 0, -20)

local StatusBarText = StatusBar:CreateFontString(nil, "OVERLAY")
StatusBarText:SetFont(C.Media.Font, 13, "OUTLINE")
StatusBarText:SetPoint("CENTER", StatusBar)

local OptionOne = CreateFrame("Button", "KkthnxUIInstallOption1", KkthnxUIInstallFrame)
OptionOne:SetPoint("BOTTOMLEFT", KkthnxUIInstallFrame, "BOTTOMLEFT", 22, 28)
OptionOne:SetSize(128, 20)
OptionOne:SkinButton()
OptionOne:FontString("Text", C.Media.Font, 12, C.Media.Font_Style)
OptionOne.Text:SetPoint("CENTER")

local OptionTwo = CreateFrame("Button", "KkthnxUIInstallOption2", KkthnxUIInstallFrame)
OptionTwo:SetPoint("BOTTOMRIGHT", KkthnxUIInstallFrame, "BOTTOMRIGHT", -22, 28)
OptionTwo:SetSize(128, 20)
OptionTwo:SkinButton()
OptionTwo:FontString("Text", C.Media.Font, 12, C.Media.Font_Style)
OptionTwo.Text:SetPoint("CENTER")

local Close = CreateFrame("Button", "KkthnxUIInstallCloseButton", KkthnxUIInstallFrame, "UIPanelCloseButton")
Close:SetPoint("TOPRIGHT", KkthnxUIInstallFrame, "TOPRIGHT")
Close:SetScript("OnClick", function()
	KkthnxUIInstallFrame:Hide()
end)

local StepFour = function()
	if (GetCVarBool("Sound_EnableMusic")) then
		PlaySoundKitID(44323)
	end
	KkthnxUIDataPerChar.Install = true
	StatusBar:SetValue(4)
	Header:SetText(L.Install.Header11)
	TextOne:SetText(L.Install.Step4Line1)
	TextTwo:SetText(L.Install.Step4Line2)
	TextThree:SetText(L.Install.Step4Line3)
	TextFour:SetText(L.Install.Step4Line4)
	StatusBarText:SetText("4/4")
	OptionOne:Hide()
	OptionTwo.Text:SetText(L.Install.ButtonFinish)

	if InstallStepComplete then
		InstallStepComplete.Message = "Install Complete"
		InstallStepComplete:Show()
	end
	OptionTwo:SetScript("OnClick", function()
		ReloadUI()
	end)
end

local StepThree = function()
	if not OptionTwo:IsShown() then OptionTwo:Show() end
	StatusBar:SetValue(3)
	Header:SetText(L.Install.Header10)
	TextOne:SetText(L.Install.Step3Line1)
	TextTwo:SetText(L.Install.Step3Line2)
	TextThree:SetText(L.Install.Step3Line3)
	TextFour:SetText(L.Install.Step3Line4)
	StatusBarText:SetText("3/4")
	OptionOne:SetScript("OnClick", StepFour)
	OptionTwo:SetScript("OnClick", function()
		KkthnxUIInstall.PositionSetup()
		StepFour()
	end)
end

local StepTwo = function()
	StatusBar:SetValue(2)
	Header:SetText(L.Install.Header9)
	StatusBarText:SetText("2/4")
	if K.CheckAddOn("Prat") or K.CheckAddOn("Chatter") then
		TextOne:SetText(L.Install.Step2Line0)
		TextTwo:SetText("")
		TextThree:SetText("")
		TextFour:SetText("")
		OptionTwo:Hide()
	else
		TextOne:SetText(L.Install.Step2Line1)
		TextTwo:SetText(L.Install.Step2Line2)
		TextThree:SetText(L.Install.Step2Line3)
		TextFour:SetText(L.Install.Step2Line4)
		OptionTwo:SetScript("OnClick", function()
			KkthnxUIInstall.ChatSetup()
			StepThree()
		end)
	end
	OptionOne:SetScript("OnClick", StepThree)
end

local StepOne = function()
	Close:Hide()
	StatusBar:SetMinMaxValues(0, 4)
	StatusBar:Show()
	StatusBar:SetValue(1)
	StatusBar:SetStatusBarColor(K.Color.r, K.Color.g, K.Color.b)
	Header:SetText(L.Install.Header8)
	TextOne:SetText(L.Install.Step1Line1)
	TextTwo:SetText(L.Install.Step1Line2)
	TextThree:SetText(L.Install.Step1Line3)
	TextFour:SetText(L.Install.Step1Line4)
	StatusBarText:SetText("1/4")

	OptionOne:Show()

	OptionOne.Text:SetText(L.Install.ButtonSkip)
	OptionTwo.Text:SetText(L.Install.ButtonContinue)

	OptionOne:SetScript("OnClick", StepTwo)
	OptionTwo:SetScript("OnClick", function()
		KkthnxUIInstall.CVarSetup()
		StepTwo()
	end)

	-- this is really essential, whatever if skipped or not
	if (C.ActionBar.Enable) then
		SetActionBarToggles(true, true, true, true)
	end
end

-- Install KkthnxUI with default settings.
function KkthnxUIInstall:Install()
	KkthnxUIInstallFrame:Show()
	StatusBar:Hide()
	OptionOne:Show()
	OptionTwo:Show()
	Close:Show()
	Header:SetText(L.Install.Header1)
	TextOne:SetText(L.Install.InitLine1)
	TextTwo:SetText(L.Install.InitLine2)

	OptionOne.Text:SetText(L.Install.ButtonSkip)
	OptionTwo.Text:SetText(L.Install.ButtonInstall)

	OptionOne:SetScript("OnClick", StepFour)
	OptionTwo:SetScript("OnClick", StepOne)
end

do
	if not InstallStepComplete then
		local InstallMessage = CreateFrame("Frame", "InstallStepComplete", UIParent)
		InstallMessage:SetSize(418, 72)
		InstallMessage:SetPoint("TOP", 0, -190)
		InstallMessage:Hide()
		InstallMessage:SetScript("OnShow", function(self)
			if self.Message then
				PlaySoundFile([[Sound\Interface\LevelUp.ogg]])
				self.Text:SetText(self.Message)
				UIFrameFadeOut(self, 3.5, 1, 0)
				K.Delay(4, function() self:Hide() end)
				self.Message = nil
			else
				self:Hide()
			end
		end)

		InstallMessage.FirstShow = false

		InstallMessage.Background = InstallMessage:CreateTexture(nil, "BACKGROUND")
		InstallMessage.Background:SetTexture([[Interface\LevelUp\LevelUpTex]])
		InstallMessage.Background:SetPoint("BOTTOM")
		InstallMessage.Background:SetSize(326, 103)
		InstallMessage.Background:SetTexCoord(0.00195313, 0.63867188, 0.03710938, 0.23828125)
		InstallMessage.Background:SetVertexColor(1, 1, 1, 0.6)

		InstallMessage.LineTop = InstallMessage:CreateTexture(nil, "BACKGROUND")
		InstallMessage.LineTop:SetDrawLayer("BACKGROUND", 2)
		InstallMessage.LineTop:SetTexture([[Interface\LevelUp\LevelUpTex]])
		InstallMessage.LineTop:SetPoint("TOP")
		InstallMessage.LineTop:SetSize(418, 7)
		InstallMessage.LineTop:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)

		InstallMessage.LineBottom = InstallMessage:CreateTexture(nil, "BACKGROUND")
		InstallMessage.LineBottom:SetDrawLayer("BACKGROUND", 2)
		InstallMessage.LineBottom:SetTexture([[Interface\LevelUp\LevelUpTex]])
		InstallMessage.LineBottom:SetPoint("BOTTOM")
		InstallMessage.LineBottom:SetSize(418, 7)
		InstallMessage.LineBottom:SetTexCoord(0.00195313, 0.81835938, 0.01953125, 0.03320313)

		InstallMessage.Text = InstallMessage:CreateFontString(nil, "ARTWORK", "GameFont_Gigantic")
		InstallMessage.Text:SetPoint("BOTTOM", 0, 12)
		InstallMessage.Text:SetFont(C.Media.Font, 40, "")
		InstallMessage.Text:SetTextColor(1, 0.82, 0)
		InstallMessage.Text:SetJustifyH("CENTER")
	end
end

-- On login function
local Install = CreateFrame("Frame")
Install:RegisterEvent("ADDON_LOADED")
Install:SetScript("OnEvent", function(self, event, addon)
	if addon ~= "KkthnxUI" then return end

	-- Create empty saved vars if they doesn't exist.
	if KkthnxUIData == nil then KkthnxUIData = {} end
	if KkthnxUIDataPerChar == nil then KkthnxUIDataPerChar = {} end
	if KkthnxUIDataPerChar.Movers == nil then KkthnxUIDataPerChar.Movers = {} end
	if KkthnxUIDataPerChar.AutoInvite == nil then KkthnxUIDataPerChar.AutoInvite = false end
	if KkthnxUIDataPerChar.BarsLocked == nil then KkthnxUIDataPerChar.BarsLocked = false end
	if KkthnxUIDataPerChar.SplitBars == nil then KkthnxUIDataPerChar.SplitBars = true end
	if KkthnxUIDataPerChar.RightBars == nil then KkthnxUIDataPerChar.RightBars = C.ActionBar.RightBars end
	if KkthnxUIDataPerChar.BottomBars == nil then KkthnxUIDataPerChar.BottomBars = C.ActionBar.BottomBars end

	-- Check if we should disable our UI due to too small of ScreenWidth
	if K.ScreenWidth < 1024 and GetCVarBool("gxMonitor") == "0" then
		local UseUIScale = GetCVarBool("useUiScale")
		if not UseUIScale then
			SetCVar("useUiScale", 0)
		end
		StaticPopup_Show("DISABLE_UI")
	end

	-- Install default if we never ran KkthnxUI on this character.
	if not KkthnxUIDataPerChar.Install then
		KkthnxUIInstall.Install()
	end

	-- Welcome message
	if C.General.WelcomeMessage == true then
		print(L.Welcome.Line1..K.Version.." "..K.Client..", "..string_format("|cff%02x%02x%02x%s|r", K.Color.r * 255, K.Color.g * 255, K.Color.b * 255, K.Name))
		print(L.Welcome.Line2..L.Welcome.Line3)
		print(L.Welcome.Line4..L.Welcome.Line5)
	end

	self:UnregisterEvent("ADDON_LOADED")
end)

_G.SLASH_VERSION1 = "/version"
SlashCmdList.VERSION = function() if KkthnxUIVersionFrame:IsShown() then KkthnxUIVersionFrame:Hide() else KkthnxUIVersionFrame:Show() end end

_G.SLASH_CONFIGURE1, _G.SLASH_CONFIGURE2 = "/install", "/installui"
SlashCmdList.CONFIGURE = KkthnxUIInstall.Install

_G.SLASH_RESETUI1 = "/resetui"
SlashCmdList.RESETUI = function() KkthnxUIInstallFrame:Show() StepOne() end

StaticPopupDialogs["DISABLE_UI"] = {
	text = L.Popup.DisableUI,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function() DisableAddOn("KkthnxUI") ReloadUI() end,
	showAlert = true,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = true,
	preferredIndex = 3
}

StaticPopupDialogs["RESET_UI"] = {
	text = L.Popup.ResetUI,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function() KkthnxUIInstall.Install() if UIConfig and UIConfig:IsShown() then UIConfigMain:Hide() end end,
	OnCancel = function() KkthnxUIDataPerChar.Install = true end,
	showAlert = true,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = true,
	preferredIndex = 3
}

K.Install = KkthnxUIInstall