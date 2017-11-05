local E, L, V, P, G = unpack(ElvUI)
local RU = E:GetModule("RaidUtility")

local InCombatLockdown = InCombatLockdown

local function UpdateRaidControl()
	if InCombatLockdown() then return; end

	RaidUtility_ShowButton:Hide()
	RaidUtilityPanel:Hide()

	-- RaidUtility_ShowButton:SetTemplate("Transparent")
	-- RaidUtility_CloseButton:SetTemplate("Transparent")
	-- RaidUtilityPanel:SetTemplate("Transparent")

end
hooksecurefunc(RU, "ToggleRaidUtil", UpdateRaidControl)
