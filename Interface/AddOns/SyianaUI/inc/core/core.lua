local addon, ns = ...
local cfg = ns.cfg
local dragFrameList = ns.dragFrameList
local gryphones = cfg.activation.hidegryphones
local orderhall = cfg.activation.hideoderhallbar
local talkhead = cfg.activation.hidetalkhead

-- REMOVING UGLY PARTS OF UI

local event_frame = CreateFrame('Frame')
local errormessage_blocks = {
    'Способность пока недоступна',
    'Выполняется другое действие',
    'Невозможно делать это на ходу',
    'Предмет пока недоступен',
    'Недостаточно',
    'Некого атаковать',
    'Заклинание пока недоступно',
    'У вас нет цели',
    'Вы пока не можете этого сделать',

    'Ability is not ready yet',
    'Another action is in progress',
    'Can\'t attack while mounted',
    'Can\'t do that while moving',
    'Item is not ready yet',
    'Not enough',
    'Nothing to attack',
    'Spell is not ready yet',
    'You have no target',
    'You can\'t do that yet',
}
local enable
local onevent
local uierrorsframe_addmessage
local old_uierrosframe_addmessage
function enable ()
    old_uierrosframe_addmessage = UIErrorsFrame.AddMessage
    UIErrorsFrame.AddMessage = uierrorsframe_addmessage
end

function uierrorsframe_addmessage (frame, text, red, green, blue, id)
    for i, v in ipairs(errormessage_blocks) do
        if text and text:match(v) then
            return
        end
    end
    old_uierrosframe_addmessage(frame, text, red, green, blue, id)
end

function onevent (frame, event, ...)
    if event == 'PLAYER_LOGIN' then
        enable()
    end
end
event_frame:SetScript('OnEvent', onevent)
event_frame:RegisterEvent('PLAYER_LOGIN')

-- SLASH COMMANDS

SlashCmdList['RELOAD'] = function() ReloadUI() end
SLASH_RELOAD1 = '/rl'

-- AUTOREP

local g = CreateFrame("Frame")
g:RegisterEvent("MERCHANT_SHOW")
g:SetScript("OnEvent", function()
    local bag, slot
    for bag = 0, 4 do
        for slot = 0, GetContainerNumSlots(bag) do
            local link = GetContainerItemLink(bag, slot)
            if link and (select(3, GetItemInfo(link)) == 0) then
                UseContainerItem(bag, slot)
            end
        end
    end

    if(CanMerchantRepair()) then
        local cost = GetRepairAllCost()
        if cost > 0 then
            local money = GetMoney()
            if IsInGuild() then
                local guildMoney = GetGuildBankWithdrawMoney()
                if guildMoney > GetGuildBankMoney() then
                    guildMoney = GetGuildBankMoney()
                end
                if guildMoney > cost and CanGuildBankRepair() then
                    RepairAllItems(1)
                    print(format("|cfff07100Repair cost covered by G-Bank: %.1fg|r", cost * 0.0001))
                    return
                end
            end
            if money > cost then
                RepairAllItems()
                print(format("|cffead000Repair cost: %.1fg|r", cost * 0.0001))
            else
                print("Not enough gold to cover the repair cost.")
            end
        end
    end
end)

local NEW_ITEM_VENDOR_STACK_BUY = ITEM_VENDOR_STACK_BUY
ITEM_VENDOR_STACK_BUY = '|cffa9ff00'..NEW_ITEM_VENDOR_STACK_BUY..'|r'

local origMerchantItemButton_OnModifiedClick = _G.MerchantItemButton_OnModifiedClick
local function MerchantItemButton_OnModifiedClickHook(self, ...)
    origMerchantItemButton_OnModifiedClick(self, ...)

    if (IsAltKeyDown()) then
        local maxStack = select(8, GetItemInfo(GetMerchantItemLink(self:GetID())))
        local _, _, _, quantity = GetMerchantItemInfo(self:GetID())

        if (maxStack and maxStack > 1) then
            BuyMerchantItem(self:GetID(), floor(maxStack / quantity))
        end
    end
end
MerchantItemButton_OnModifiedClick = MerchantItemButton_OnModifiedClickHook

-- HIDE RAIDFRAMERESIZE

local n, w, h = "CompactUnitFrameProfilesGeneralOptionsFrame" h, w = 
_G[n.."HeightSlider"],
_G[n.."WidthSlider"]
h:SetMinMaxValues(1, 200)
w:SetMinMaxValues(1, 200)

-- HIDE ORDERHALLBAR

if not orderhall then

else

    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript('OnEvent', function(self, event, addon)
        if addon == "Blizzard_OrderHallUI" then
        OrderHallCommandBar:Hide()
        OrderHallCommandBar.Show = function() end
    end
end)
end

-- HIDE TALKHEAD

if not talkhead then

else

local f = CreateFrame("Frame")

function f:OnEvent(event, addon)
    if addon == "Blizzard_TalkingHeadUI" then
        hooksecurefunc("TalkingHeadFrame_PlayCurrent", function()
            TalkingHeadFrame:Hide()
        end)
        self:UnregisterEvent(event)
    end
end

f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)
end

-- HIDE GRYPHONES

if not gryphones then

else
MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()
end

-- COORDS

-- REWORKING THE MINIMAP

local CF = CreateFrame("Frame")
CF:RegisterEvent("PLAYER_LOGIN")
CF:SetScript("OnEvent", function(self, event)
if not (IsAddOnLoaded("rMinimap")) then
for i, v in pairs({
    MinimapBorder,
    MiniMapMailBorder,
    QueueStatusMinimapButtonBorder,
    select(1, TimeManagerClockButton:GetRegions()),
}) do
v:SetVertexColor(.14, .14, .14)
end
select(2, TimeManagerClockButton:GetRegions()):SetVertexColor(1, 1, 1)

hooksecurefunc("GarrisonLandingPageMinimapButton_UpdateIcon", function(self)
self:GetNormalTexture():SetTexture(nil)
self:GetPushedTexture():SetTexture(nil)
if not gb then
    gb = CreateFrame("Frame", nil, GarrisonLandingPageMinimapButton)
    gb:SetFrameLevel(GarrisonLandingPageMinimapButton:GetFrameLevel() - 1)
    gb:SetPoint("CENTER", 0, 0)
    gb:SetSize(36, 36)

    gb.icon = gb:CreateTexture(nil, "ARTWORK")
    gb.icon:SetPoint("CENTER", 0, 0)
    gb.icon:SetSize(36, 36)

    gb.border = CreateFrame("Frame", nil, gb)
    gb.border:SetFrameLevel(gb:GetFrameLevel() + 1)
    gb.border:SetAllPoints()

    gb.border.texture = gb.border:CreateTexture(nil, "ARTWORK")
    gb.border.texture:SetTexture("Interface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Ring")
    gb.border.texture:SetVertexColor(.1, .1, .1)
    gb.border.texture:SetPoint("CENTER", 1, - 2)
    gb.border.texture:SetSize(45, 45)
end
if (C_Garrison.GetLandingPageGarrisonType() == 2) then
    if select(1, UnitFactionGroup("player")) == "Alliance" then
        SetPortraitToTexture(gb.icon, select(3, GetSpellInfo(61573)))
    elseif select(1, UnitFactionGroup("player")) == "Horde" then
        SetPortraitToTexture(gb.icon, select(3, GetSpellInfo(61574)))
    end
else
    local t = CLASS_ICON_TCOORDS[select(2, UnitClass("player"))]
    gb.icon:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
    gb.icon:SetTexCoord(unpack(t))
end
end)

MinimapBorderTop:Hide()
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
MiniMapWorldMapButton:Hide()
MinimapZoneText:SetPoint("CENTER", Minimap, 0, 80)
GameTimeFrame:Hide()
GameTimeFrame:UnregisterAllEvents()
GameTimeFrame.Show = kill
MiniMapTracking:Hide()
MiniMapTracking.Show = kill
MiniMapTracking:UnregisterAllEvents()
Minimap:EnableMouseWheel(true)
Minimap:SetScript("OnMouseWheel", function(self, z)
local c = Minimap:GetZoom()
if(z > 0 and c < 5) then
    Minimap:SetZoom(c + 1)
elseif(z < 0 and c > 0) then
    Minimap:SetZoom(c - 1)
end
end)
Minimap:SetScript("OnMouseUp", function(self, btn)
if btn == "RightButton" then
_G.GameTimeFrame:Click()
elseif btn == "MiddleButton" then
_G.ToggleDropDownMenu(1, nil, _G.MiniMapTrackingDropDown, self)
else
_G.Minimap_OnClick(self)
end
end)
end
end)

-- COLORING FRAMES

local CF = CreateFrame("Frame")
CF:RegisterEvent("PLAYER_ENTERING_WORLD")
CF:RegisterEvent("GROUP_ROSTER_UPDATE")

function ColorRaid()
for g = 1, NUM_RAID_GROUPS do
local group = _G["CompactRaidGroup"..g.."BorderFrame"]
if group then
for _, region in pairs({group:GetRegions()}) do
if region:IsObjectType("Texture") then
    region:SetVertexColor(.15, .15, .15)
end
end
end
for m = 1, 5 do
local frame = _G["CompactRaidGroup"..g.."Member"..m]
if frame then
groupcolored = true
for _, region in pairs({frame:GetRegions()}) do
    if region:GetName():find("Border") then
        region:SetVertexColor(.15, .15, .15)
    end
end
end
local frame = _G["CompactRaidFrame"..m]
if frame then
singlecolored = true
for _, region in pairs({frame:GetRegions()}) do
    if region:GetName():find("Border") then
        region:SetVertexColor(.15, .15, .15)
    end
end
end
end
end
for _, region in pairs({CompactRaidFrameContainerBorderFrame:GetRegions()}) do
if region:IsObjectType("Texture") then
region:SetVertexColor(.15, .15, .15)
end
end
end

CF:SetScript("OnEvent", function(self, event)
ColorRaid()
CF:SetScript("OnUpdate", function()
if CompactRaidGroup1 and not groupcolored == true then
ColorRaid()
end
if CompactRaidFrame1 and not singlecolored == true then
ColorRaid()
end
end)
if event == "GROUP_ROSTER_UPDATE" then return end
if not (IsAddOnLoaded("Shadowed Unit Frames") or IsAddOnLoaded("PitBull Unit Frames 4.0") or IsAddOnLoaded("X-Perl UnitFrames")) then
for i, v in pairs({
PlayerFrameTexture,
TargetFrameTextureFrameTexture,
PlayerFrameAlternateManaBarBorder,
PlayerFrameAlternateManaBarLeftBorder,
PlayerFrameAlternateManaBarRightBorder,
PaladinPowerBarFrameBG,
PaladinPowerBarFrameBankBG,
ComboPointPlayerFrame.Background,
ComboPointPlayerFrame.Combo1.PointOff,
ComboPointPlayerFrame.Combo2.PointOff,
ComboPointPlayerFrame.Combo3.PointOff,
ComboPointPlayerFrame.Combo4.PointOff,
ComboPointPlayerFrame.Combo5.PointOff,
ComboPointPlayerFrame.Combo6.PointOff,
AlternatePowerBarBorder,
AlternatePowerBarLeftBorder,
AlternatePowerBarRightBorder,
PetFrameTexture,
PartyMemberFrame1Texture,
PartyMemberFrame2Texture,
PartyMemberFrame3Texture,
PartyMemberFrame4Texture,
PartyMemberFrame1PetFrameTexture,
PartyMemberFrame2PetFrameTexture,
PartyMemberFrame3PetFrameTexture,
PartyMemberFrame4PetFrameTexture,
FocusFrameTextureFrameTexture,
TargetFrameToTTextureFrameTexture,
FocusFrameToTTextureFrameTexture,
Boss1TargetFrameTextureFrameTexture,
Boss2TargetFrameTextureFrameTexture,
Boss3TargetFrameTextureFrameTexture,
Boss4TargetFrameTextureFrameTexture,
Boss5TargetFrameTextureFrameTexture,
Boss1TargetFrameSpellBar.Border,
Boss2TargetFrameSpellBar.Border,
Boss3TargetFrameSpellBar.Border,
Boss4TargetFrameSpellBar.Border,
Boss5TargetFrameSpellBar.Border,
CastingBarFrame.Border,
FocusFrameSpellBar.Border,
TargetFrameSpellBar.Border,

}) do
v:SetVertexColor(.15, .15, .15)
end

for _, region in pairs({StopwatchFrame:GetRegions()}) do
region:SetVertexColor(.15, .15, .15)
end

for _, region in pairs({CompactRaidFrameManager:GetRegions()}) do
if region:IsObjectType("Texture") then
region:SetVertexColor(.15, .15, .15)
end
end
for _, region in pairs({CompactRaidFrameManagerContainerResizeFrame:GetRegions()}) do
if region:GetName():find("Border") then
region:SetVertexColor(.15, .15, .15)
end
end
CompactRaidFrameManagerToggleButton:SetNormalTexture("Interface\\AddOns\\SyianaUI\\inc\\textures\\raid\\RaidPanel-Toggle")

hooksecurefunc("GameTooltip_ShowCompareItem", function(self, anchorFrame)
if self then
local shoppingTooltip1, shoppingTooltip2 = unpack(self.shoppingTooltips)
shoppingTooltip1:SetBackdropBorderColor(.15, .15, .15)
shoppingTooltip2:SetBackdropBorderColor(.15, .15, .15)
end
end)


GameTooltip:SetBackdropBorderColor(.15, .15, .15)
GameTooltip.SetBackdropBorderColor = function() end

for i, v in pairs({
PlayerPVPIcon,
TargetFrameTextureFramePVPIcon,
FocusFrameTextureFramePVPIcon,
}) do
v:SetAlpha(0)
end
for i = 1, 4 do
_G["PartyMemberFrame"..i.."PVPIcon"]:SetAlpha(0)
_G["PartyMemberFrame"..i.."NotPresentIcon"]:Hide()
_G["PartyMemberFrame"..i.."NotPresentIcon"].Show = function() end
end
PlayerFrameGroupIndicator:SetAlpha(0)
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function() end
PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function() end
for _, child in pairs({WarlockPowerFrame:GetChildren()}) do
for _, region in pairs({child:GetRegions()}) do
if region:GetDrawLayer() == "BORDER" then
region:SetVertexColor(.15, .15, .15)
end
end
end

else
CastingBarFrameBorder:SetVertexColor(.15, .15, .15)
end
end)

-- COLORING THE MAIN BAR

for i, v in pairs({
SlidingActionBarTexture0,
SlidingActionBarTexture1,
MainMenuBarTexture0,
MainMenuBarTexture1,
MainMenuBarTexture2,
MainMenuBarTexture3,
MainMenuMaxLevelBar0,
MainMenuMaxLevelBar1,
MainMenuMaxLevelBar2,
MainMenuMaxLevelBar3,
MainMenuXPBarTextureLeftCap,
MainMenuXPBarTextureRightCap,
MainMenuXPBarTextureMid,
ReputationWatchBarTexture0,
ReputationWatchBarTexture1,
ReputationWatchBarTexture2,
ReputationWatchBarTexture3,
ReputationXPBarTexture0,
ReputationXPBarTexture1,
ReputationXPBarTexture2,
ReputationXPBarTexture3,
ReputationWatchBar.StatusBar.XPBarTexture0,
ReputationWatchBar.StatusBar.XPBarTexture1,
ReputationWatchBar.StatusBar.XPBarTexture2,
ReputationWatchBar.StatusBar.XPBarTexture3,
ReputationWatchBar.StatusBar.WatchBarTexture0,
ReputationWatchBar.StatusBar.WatchBarTexture1,
ReputationWatchBar.StatusBar.WatchBarTexture2,
ReputationWatchBar.StatusBar.WatchBarTexture3,
ArtifactWatchBar.StatusBar.XPBarTexture0,
ArtifactWatchBar.StatusBar.XPBarTexture1,
ArtifactWatchBar.StatusBar.XPBarTexture2,
ArtifactWatchBar.StatusBar.XPBarTexture3,
ArtifactWatchBar.StatusBar.WatchBarTexture0,
ArtifactWatchBar.StatusBar.WatchBarTexture1,
ArtifactWatchBar.StatusBar.WatchBarTexture2,
ArtifactWatchBar.StatusBar.WatchBarTexture3,
HonorWatchBar.StatusBar.XPBarTexture0,
HonorWatchBar.StatusBar.XPBarTexture1,
HonorWatchBar.StatusBar.XPBarTexture2,
HonorWatchBar.StatusBar.XPBarTexture3,
HonorWatchBar.StatusBar.WatchBarTexture0,
HonorWatchBar.StatusBar.WatchBarTexture1,
HonorWatchBar.StatusBar.WatchBarTexture2,
HonorWatchBar.StatusBar.WatchBarTexture3,
}) do

v:SetVertexColor(.15, .15, .15)

end
for i = 1, 19 do _G["MainMenuXPBarDiv"..i]:SetTexture(Empty_Art) end
ArtifactWatchBar.Tick.Normal:SetVertexColor(0.4, 0.4, 0.4)
ExhaustionTick:SetAlpha(0)
for i, v in pairs({
MainMenuBarLeftEndCap,
MainMenuBarRightEndCap,
StanceBarLeft,
StanceBarMiddle,
StanceBarRight,
}) do
v:SetVertexColor(.2, .2, .2)
end

-- COLORING ARENA FRAMES

local CF = CreateFrame("Frame")
local _, instanceType = IsInInstance()
CF:RegisterEvent("ADDON_LOADED")
CF:RegisterEvent("PLAYER_ENTERING_WORLD")
CF:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
CF:SetScript("OnEvent", function(self, event, addon)
if addon == "Blizzard_ArenaUI" and not (IsAddOnLoaded("Shadowed Unit Frames")) then
for i, v in pairs({
ArenaEnemyFrame1Texture,
ArenaEnemyFrame2Texture,
ArenaEnemyFrame3Texture,
ArenaEnemyFrame4Texture,
ArenaEnemyFrame5Texture,
ArenaEnemyFrame1SpecBorder,
ArenaEnemyFrame2SpecBorder,
ArenaEnemyFrame3SpecBorder,
ArenaEnemyFrame4SpecBorder,
ArenaEnemyFrame5SpecBorder,
ArenaEnemyFrame1PetFrameTexture,
ArenaEnemyFrame2PetFrameTexture,
ArenaEnemyFrame3PetFrameTexture,
ArenaEnemyFrame4PetFrameTexture,
ArenaEnemyFrame5PetFrameTexture,
}) do
v:SetVertexColor(.15, .15, .15)
end
elseif event == "ARENA_PREP_OPPONENT_SPECIALIZATIONS" or (event == "PLAYER_ENTERING_WORLD" and instanceType == "arena") then
for i, v in pairs({
ArenaPrepFrame1Texture,
ArenaPrepFrame2Texture,
ArenaPrepFrame3Texture,
ArenaPrepFrame4Texture,
ArenaPrepFrame5Texture,
ArenaPrepFrame1SpecBorder,
ArenaPrepFrame2SpecBorder,
ArenaPrepFrame3SpecBorder,
ArenaPrepFrame4SpecBorder,
ArenaPrepFrame5SpecBorder,
}) do
v:SetVertexColor(.15, .15, .15)
end
end
end)
if IsAddOnLoaded("Blizzard_ArenaUI") then
for i, v in pairs({
ArenaEnemyFrame1Texture,
ArenaEnemyFrame2Texture,
ArenaEnemyFrame3Texture,
ArenaEnemyFrame4Texture,
ArenaEnemyFrame5Texture,
ArenaEnemyFrame1SpecBorder,
ArenaEnemyFrame2SpecBorder,
ArenaEnemyFrame3SpecBorder,
ArenaEnemyFrame4SpecBorder,
ArenaEnemyFrame5SpecBorder,
ArenaEnemyFrame1PetFrameTexture,
ArenaEnemyFrame2PetFrameTexture,
ArenaEnemyFrame3PetFrameTexture,
ArenaEnemyFrame4PetFrameTexture,
ArenaEnemyFrame5PetFrameTexture,
}) do
v:SetVertexColor(.15, .15, .15)
end
end
