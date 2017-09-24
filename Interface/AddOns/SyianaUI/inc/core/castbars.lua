local addon, ns = ...
local cfg = ns.cfg
local activate = cfg.activation.customcastbars

if not activate then return

else

local playerhide  = cfg.playercastingbar.hide
local playertimer = cfg.playercastingbar.timer
local targethide  = cfg.targetcastingbar.hide
local targettimer = cfg.targetcastingbar.timer
local format = string.format
local max = math.max
local CreateFrame = CreateFrame
local hooksecurefunc = hooksecurefunc
local UIPARENT_MANAGED_FRAME_POSITIONS = UIPARENT_MANAGED_FRAME_POSITIONS
local CastBars = CreateFrame("Frame", nil, UIParent)

CastBars:RegisterEvent("ADDON_LOADED")
CastBars:RegisterEvent("PLAYER_ENTERING_WORLD")
CastBars:SetScript("OnEvent", function(self, event, addon)
	if addon == "SyianaUI" or event == "PLAYER_ENTERING_WORLD" then
		if not InCombatLockdown() then

			UIPARENT_MANAGED_FRAME_POSITIONS["CastingBarFrame"] = nil

      if playerhide then
      CastingBarFrame:UnregisterAllEvents()
      else
			-- Player Castbar
			CastingBarFrame:SetMovable(true)
			CastingBarFrame:ClearAllPoints()
			CastingBarFrame:SetScale(cfg.playercastingbar.scale)
			CastingBarFrame:SetPoint("CENTER",MainMenuBar,"CENTER", cfg.playercastingbar.pos1,cfg.playercastingbar.pos2)
			CastingBarFrame:SetUserPlaced(true)
			CastingBarFrame:SetMovable(false)
      CastingBarFrame.Icon:Show()
			CastingBarFrame.Icon:ClearAllPoints()
			CastingBarFrame.Icon:SetSize(20, 20)
	    CastingBarFrame.Icon:SetPoint("RIGHT", CastingBarFrame, "LEFT", -5, 0)
      CastingBarFrame.Border:SetTexture("Interface\\CastingBar\\UI-CastingBar-Border-Small")
      CastingBarFrame.Flash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small")
      CastingBarFrame.Text:ClearAllPoints()
      CastingBarFrame.Text:SetPoint("CENTER", 0, 1)
      CastingBarFrame.Border:SetWidth(CastingBarFrame.Border:GetWidth() + 4)
      CastingBarFrame.Flash:SetWidth(CastingBarFrame.Flash:GetWidth() + 4)
      CastingBarFrame.BorderShield:SetWidth(CastingBarFrame.BorderShield:GetWidth() + 4)
      CastingBarFrame.Border:SetPoint("TOP", 0, 26)
      CastingBarFrame.Flash:SetPoint("TOP", 0, 26)
      CastingBarFrame.BorderShield:SetPoint("TOP", 0, 26)

			if not playertimer then

			else
			-- Player Timer
			CastingBarFrame.timer = CastingBarFrame:CreateFontString(nil)
			CastingBarFrame.timer:SetFont(cfg.font, 14,'THINOUTLINE')
			CastingBarFrame.timer:SetPoint("LEFT", CastingBarFrame, "RIGHT", 5, 0)
			CastingBarFrame.update = 0.1
			end
      end

      if targethide then
      TargetFrameSpellBar:UnregisterAllEvents()
      else
      -- Target Castbar
			TargetFrameSpellBar:SetMovable(true)
      TargetFrameSpellBar:ClearAllPoints()
      TargetFrameSpellBar:SetScale(cfg.targetcastingbar.scale)
      TargetFrameSpellBar:SetPoint("CENTER",MainMenuBar,"CENTER", cfg.targetcastingbar.pos1,cfg.targetcastingbar.pos2)
			TargetFrameSpellBar:SetUserPlaced(true)
			TargetFrameSpellBar:SetMovable(false)
      TargetFrameSpellBar.Icon:SetPoint("RIGHT", TargetFrameSpellBar, "LEFT", -3, 0)
      TargetFrameSpellBar.SetPoint = function() end
      TargetFrameSpellBar:SetStatusBarColor(1,0,0)
      TargetFrameSpellBar.SetStatusBarColor = function() end

			if not targettimer then

			else
			-- Target Timer
			TargetFrameSpellBar.timer = TargetFrameSpellBar:CreateFontString(nil)
			TargetFrameSpellBar.timer:SetFont(cfg.font, 11,'THINOUTLINE')
			TargetFrameSpellBar.timer:SetPoint("LEFT", TargetFrameSpellBar, "RIGHT", 4, 0)
			TargetFrameSpellBar.update = 0.1
			end
      end

			self:UnregisterEvent("ADDON_LOADED")
			self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		end
	end
end)

-- CastBar timer function
local function CastingBarFrame_OnUpdate_Hook(self, elapsed)
	if not self.timer then return end
	if self.update and self.update < elapsed then
		if self.casting then
			self.timer:SetText(format("%.1f", max(self.maxValue - self.value, 0)))
		elseif self.channeling then
			self.timer:SetText(format("%.1f", max(self.value, 0)))
		else
			self.timer:SetText("")
		end
		self.update = .1
	  else
		self.update = self.update - elapsed
	end
end

CastingBarFrame:HookScript("OnUpdate", CastingBarFrame_OnUpdate_Hook)
TargetFrameSpellBar:HookScript("OnUpdate", CastingBarFrame_OnUpdate_Hook)

end
