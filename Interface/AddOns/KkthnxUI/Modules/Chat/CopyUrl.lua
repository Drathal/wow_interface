local K, C, L = unpack(select(2, ...))
if C.Chat.Enable ~= true then return end

-- Lua API
local string_gsub = string.gsub
local string_sub = string.sub
local unpack = unpack

-- Global variables that we don't cache, list them here for mikk's FindGlobals script
-- GLOBALS: ChatEdit_ChooseBoxForSend,  ChatEdit_ActivateChat

local function PrintURL(url)
	if C.Chat.LinkBrackets then
		url = K.RGBToHex(unpack(C.Chat.LinkColor or {0.08, 1, 0.36})).."|Hurl:"..url.."|h["..url.."]|h|r "
	else
		url = K.RGBToHex(unpack(C.Chat.LinkColor or {0.08, 1, 0.36})).."|Hurl:"..url.."|h"..url.."|h|r "
	end

	return url
end

local function FindURL(self, event, msg, ...)
	local NewMsg, Found = string_gsub(msg, "(%a+)://(%S+)%s?", PrintURL("%1://%2"))

	if (Found > 0) then
		return false, NewMsg, ...
	end

	NewMsg, Found = string_gsub(msg, "www%.([_A-Za-z0-9-]+)%.(%S+)%s?", PrintURL("www.%1.%2"))

	if (Found > 0) then
		return false, NewMsg, ...
	end

	NewMsg, Found = string_gsub(msg, "([_A-Za-z0-9-%.]+)@([_A-Za-z0-9-]+)(%.+)([_A-Za-z0-9-%.]+)%s?", PrintURL("%1@%2%3%4"))

	if (Found > 0) then
		return false, NewMsg, ...
	end

 	NewMsg, Found = string_gsub(msg, "(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)(:%d+)%s?", PrintURL("%1.%2.%3.%4%5"))

	if (Found > 0) then
		return false, NewMsg, ...
	end

 	NewMsg, Found = string_gsub(msg, "(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%s?", PrintURL("%1.%2.%3.%4"))

	if (Found > 0) then
		return false, NewMsg, ...
	end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_CONVERSATION", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_INLINE_TOAST_BROADCAST", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", FindURL)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", FindURL)

local CurrentLink = nil
local SetHyperlink = ItemRefTooltip.SetHyperlink

ItemRefTooltip.SetHyperlink = function(self, data, ...)
	if (string_sub(data, 1, 3) == "url") then
		local ChatFrameEditBox = ChatEdit_ChooseBoxForSend()

		CurrentLink = (data):sub(5)

		if (not ChatFrameEditBox:IsShown()) then
			ChatEdit_ActivateChat(ChatFrameEditBox)
		end

		ChatFrameEditBox:Insert(CurrentLink)
		ChatFrameEditBox:HighlightText()
		CurrentLink = nil
	else
		SetHyperlink(self, data, ...)
	end
end