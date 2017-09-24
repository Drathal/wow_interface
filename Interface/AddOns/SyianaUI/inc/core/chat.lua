--[[ Loot Message Shortener ]]
--Self
CURRENCY_GAINED = "Currency: %s";
CURRENCY_GAINED_MULTIPLE = "Currency: %s x%d";
CURRENCY_GAINED_MULTIPLE_BONUS = "Currency: %s x%d (Bonus)";
LOOT_ITEM_BONUS_ROLL_SELF = "Loot: %s  (Bonus)";
LOOT_ITEM_BONUS_ROLL_SELF_MULTIPLE = "Loot: %sx%d (Bonus)";
LOOT_ITEM_CREATED_SELF = "Create: %s";
LOOT_ITEM_CREATED_SELF_MULTIPLE = "Create: %sx%d";
LOOT_ITEM_PUSHED_SELF = "Loot: %s";
LOOT_ITEM_PUSHED_SELF_MULTIPLE = "Loot: %sx%d";
LOOT_ITEM_REFUND = "Refund: %s";
LOOT_ITEM_REFUND_MULTIPLE = "Refund: %sx%d";
LOOT_ITEM_SELF = "Loot: %s";
LOOT_ITEM_SELF_MULTIPLE = "Loot: %sx%d";

--Other players
LOOT_ITEM = "%s gets: %s";
LOOT_ITEM_BONUS_ROLL = "%s gets: %s (Bonus)";
LOOT_ITEM_BONUS_ROLL_MULTIPLE = "%s gets: %sx%d";
LOOT_ITEM_MULTIPLE = "%s gets: %sx%d";
LOOT_ITEM_PUSHED = "%s gets: %s";
LOOT_ITEM_PUSHED_MULTIPLE = "%s gets: %sx%d";

CHAT_FRAME_FADE_OUT_TIME = 1
CHAT_TAB_HIDE_DELAY = 0
CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0
CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA = 1
CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0

BNToastFrame:SetClampedToScreen(true)
BNToastFrame:SetClampRectInsets(-15,15,15,-15)

ChatFrameMenuButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
ChatFrameMenuButton:Hide()

local button = QuickJoinToastButton or FriendsMicroButton
button:HookScript("OnShow", button.Hide)
button:Hide()

-- Table to keep track of frames you already saw:
local frames = {}

-- Function to handle customzing a chat frame:
local function ProcessFrame(frame)
	if frames[frame] then return end

	frame:SetClampRectInsets(0, 0, 0, 0)
	frame:SetMaxResize(UIParent:GetWidth(), UIParent:GetHeight())
	frame:SetMinResize(250, 100)

	local name = frame:GetName()
	_G[name .. "ButtonFrame"]:Hide()
	_G[name .. "EditBoxLeft"]:Hide()
	_G[name .. "EditBoxMid"]:Hide()
	_G[name .. "EditBoxRight"]:Hide()

	local editbox = _G[name .. "EditBox"]
	editbox:ClearAllPoints()
	editbox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', -7, 25)
	editbox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT', 10, 25)
	editbox:SetAltArrowKeyMode(false)

	frames[frame] = true
end

-- Loop Through Chat Windows
for i = 1, NUM_CHAT_WINDOWS do
	  ProcessFrame(_G["ChatFrame" .. i])
		local chatWindowName = _G["ChatFrame"..i]:GetName();
local name, size, r, g, b, alpha, shown, locked, docked, uninteractable = GetChatWindowInfo(i);

		-- Change Chat Tabs
		local chatTab = _G[chatWindowName.."Tab"];

		--Hide Tab Backgrounds
		_G[chatWindowName.."TabLeft"]:SetTexture( nil );
		_G[chatWindowName.."TabMiddle"]:SetTexture( nil );
		_G[chatWindowName.."TabRight"]:SetTexture( nil );
		_G[chatWindowName.."TabSelectedLeft"]:SetTexture(nil)
		_G[chatWindowName.."TabSelectedMiddle"]:SetTexture(nil)
		_G[chatWindowName.."TabSelectedRight"]:SetTexture(nil)
		chatTab:SetAlpha( 1.0 );
end

-- Set up a dirty hook to catch temporary windows and customize them when they are created:
local old_OpenTemporaryWindow = FCF_OpenTemporaryWindow
FCF_OpenTemporaryWindow = function(...)
	local frame = old_OpenTemporaryWindow(...)
	ProcessFrame(frame)
	return frame
end
-- Chat Scroll Module
function FloatingChatFrame_OnMouseScroll(self, delta)
	if delta > 0 then
		if IsShiftKeyDown() then
			self:ScrollToTop()
		else
			self:ScrollUp()
		end
	elseif delta < 0 then
		if IsShiftKeyDown() then
			self:ScrollToBottom()
		else
			self:ScrollDown()
		end
	end
end

--URL COPY
local find = string.find
local gsub = string.gsub

local found = false

local function ColorURL(text, url)
    found = true
    return ' |H'..'url'..':'..tostring(url)..'|h'..'|cff0099FF'..tostring(url)..'|h|r '
end

local function ScanURL(frame, text, ...)
    found = false

    if (find(text:upper(), '%pTINTERFACE%p+')) then
        found = true
    end

        -- 192.168.2.1:1234
    if (not found) then
        text = gsub(text, '(%s?)(%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?:%d%d?%d?%d?%d?)(%s?)', ColorURL)
    end
        -- 192.168.2.1
    if (not found) then
        text = gsub(text, '(%s?)(%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?)(%s?)', ColorURL)
    end
        -- www.url.com:3333
    if (not found) then
        text = gsub(text, '(%s?)([%w_-]+%.?[%w_-]+%.[%w_-]+:%d%d%d?%d?%d?)(%s?)', ColorURL)
    end
        -- http://www.google.com
    if (not found) then
        text = gsub(text, "(%s?)(%a+://[%w_/%.%?%%=~&-'%-]+)(%s?)", ColorURL)
    end
        -- www.google.com
    if (not found) then
        text = gsub(text, "(%s?)(www%.[%w_/%.%?%%=~&-'%-]+)(%s?)", ColorURL)
    end
        -- url@domain.com
    if (not found) then
        text = gsub(text, '(%s?)([_%w-%.~-]+@[_%w-]+%.[_%w-%.]+)(%s?)', ColorURL)
    end

    frame.add(frame, text,...)
end

local function EnableURLCopy()
    for _, v in pairs(CHAT_FRAMES) do
        local chat = _G[v]
        if (chat and not chat.hasURLCopy and (chat ~= 'ChatFrame2')) then
            chat.add = chat.AddMessage
            chat.AddMessage = ScanURL
            chat.hasURLCopy = true
        end
    end
end
hooksecurefunc('FCF_OpenTemporaryWindow', EnableURLCopy)

local orig = ChatFrame_OnHyperlinkShow
function ChatFrame_OnHyperlinkShow(frame, link, text, button)
    local type, value = link:match('(%a+):(.+)')
    if (type == 'url') then
        local editBox = _G[frame:GetName()..'EditBox']
        if (editBox) then
            editBox:Show()
            editBox:SetText(value)
            editBox:SetFocus()
            editBox:HighlightText()
        end
    else
        orig(self, link, text, button)
    end
end

EnableURLCopy()

