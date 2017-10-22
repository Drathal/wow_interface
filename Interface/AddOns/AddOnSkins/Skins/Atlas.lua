-- Check these files for DecUI-specific edits - Decard
local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('Atlas') then return end

function AS:Atlas(event, addon)
	AS:SkinFrame(AtlasFrame)
	AS:SkinFrame(AtlasFrameSmall)
	AtlasFrame:SetTemplate("Transparent")
	AtlasFrameSmall:SetTemplate("Transparent")

	-- Skin Elements
	AS:SkinCloseButton(AtlasFrameCloseButton)
	AS:SkinCloseButton(AtlasFrameSmallCloseButton)
	AS:SkinButton(AtlasFrameOptionsButton)
	AS:SkinButton(AtlasFrameSmallOptionsButton)
	AS:SkinButton(AtlasSearchButton)
	AS:SkinButton(AtlasSearchClearButton)
	AS:SkinButton(AtlasSwitchButton)
	AS:SkinDropDownBox(AtlasFrameDropDown)
	AS:SkinDropDownBox(AtlasFrameDropDownType)
	AS:SkinDropDownBox(AtlasFrameSmallDropDown)
	AS:SkinDropDownBox(AtlasFrameSmallDropDownType)
	AS:SkinEditBox(AtlasSearchEditBox)
	AS:SkinScrollBar(AtlasScrollBarScrollBar)

	--Reposition Elements
	AtlasFrameCloseButton:ClearAllPoints()
	AtlasFrameCloseButton:Point('TOPRIGHT', AtlasFrame, 'TOPRIGHT', -5, -5)
	AtlasFrameSmallCloseButton:ClearAllPoints()
	AtlasFrameSmallCloseButton:Point('TOPRIGHT', AtlasFrameSmall, 'TOPRIGHT', -5, -5)
	AtlasFrameCollapseButton:ClearAllPoints()
	AtlasFrameCollapseButton:Point('BOTTOM', AtlasFrame, 'BOTTOM', 0, 12)
	AtlasFrameSmallExpandButton:ClearAllPoints()
	AtlasFrameSmallExpandButton:Point('BOTTOMRIGHT', AtlasFrameSmall, 'BOTTOMRIGHT', -10, 10)
	AtlasFrameOptionsButton:ClearAllPoints()
	AtlasFrameOptionsButton:Point('LEFT', AtlasFrameLockButton, 'RIGHT', 4, 0)
	AtlasFrameSmallOptionsButton:ClearAllPoints()
	AtlasFrameSmallOptionsButton:Point('LEFT', AtlasFrameSmallLockButton, 'RIGHT', 4, 0)
	AtlasFrameLockButton:ClearAllPoints()
	AtlasFrameLockButton:Point('TOPLEFT', AtlasFrame, 'TOPLEFT', 5, -5)
	AtlasFrameSmallLockButton:ClearAllPoints()
	AtlasFrameSmallLockButton:Point('TOPLEFT', AtlasFrameSmall, 'TOPLEFT', 10, -10)
	AtlasSearchClearButton:ClearAllPoints()
	AtlasSearchClearButton:Point('RIGHT', AtlasSwitchButton, 'LEFT', -3, 0)
	AtlasSearchButton:ClearAllPoints()
	AtlasSearchButton:Point('RIGHT', AtlasSearchClearButton, 'LEFT', -3, 0)
	AtlasSearchEditBox:ClearAllPoints()
	AtlasSearchEditBox:Point('BOTTOM', AtlasFrame, 'BOTTOM', 95, 7)
	AtlasSwitchButton:ClearAllPoints()
	AtlasSwitchButton:Point('BOTTOMRIGHT', AtlasFrame, 'BOTTOMRIGHT', -10, 10)
end

AS:RegisterSkin('Atlas', AS.Atlas)
