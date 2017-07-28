local K, C, L = unpack(select(2, ...))

["DataBars"].HonorEnable = false
["DataBars"].ReputationEnable = false
["DataBars"].ReputationWidth = 192
["DataBars"].ExperienceFade = true
["DataBars"].ArtifactEnable = false
["DataBars"].ArtifactWidth = 192	
["DataBars"].ExperienceWidth = 192

["Misc"].BGSpam = true
["Misc"].SlotDurability = true
["Misc"].CombatState = true
["Misc"].NoBanner = true
["Misc"].UseGuildRepair = true
["Misc"].EnhancedPvpMessages = true

["General"].SpellTolerance = true
["General"].ToggleButton = false
["General"].DisableTutorialButtons = true
["General"].WelcomeMessage = false
["General"].BubbleFontSize = 10
["General"].UseFlatTextures = true

["Blizzard"].RaidTools = false
["Blizzard"].TalkingHeadScale = 0.75
["Blizzard"].ColorTextures = true
["Blizzard"].TexturesColor = {
			0.188235294117647, -- [1]
			0.188235294117647, -- [2]
			0.188235294117647, -- [3]
			1, -- [4]
}

["Bags"].Enable = false

["ActionBar"].SplitBars = true
["ActionBar"].ButtonSize = 32
["ActionBar"].Macro = false
["ActionBar"].EquipBorder = true
["ActionBar"].Grid = false
["ActionBar"].ToggleMode = false
["ActionBar"].HideHighlight = true
["ActionBar"].ButtonSpace = 3
["ActionBar"].PetBarHorizontal = true

["Loot"].AutoGreed = true
["Loot"].ConfirmDisenchant = true

["Automation"].AutoInvite = true
["Automation"].Resurrection = true

["Skins"].WeakAuras = true
["Skins"].Skada = true
["Skins"].Spy = true
["Skins"].DBM = true

["Tooltip"].Enable = false

["Raidframe"].Enable = false

["Unitframe"].Outline = true
["Unitframe"].Party = false
["Unitframe"].GCDBar = true
["Unitframe"].CastbarTicks = true
["Unitframe"].ClassPortraits = false
["Unitframe"].ThreatValue = true
["Unitframe"].CastbarWidth = 200
["Unitframe"].Smooth = true

["DataText"].Time24Hr = true
["DataText"].System = false	
["DataText"].Battleground = false

["Auras"].BuffsPerRow = 15
["Auras"].Consolidate = true

["Nameplates"].Enable = false

["Minimap"].ResetZoomTime = 5
["Minimap"].Size = 200
["Minimap"].ResetZoom = true

["Cooldown"].Threshold = 0
["Cooldown"].FontSize = 15
["Cooldown"].Enable = false

["Chat"].Outline = true
["Chat"].TabsOutline = true
["Chat"].DamageMeterSpam = true
["Chat"].MessageFilter = true
["Chat"].SpamFilter = true
["Chat"].Width = 500



-- Per class config (overwrites general)
-- Class type needs to be uppercase -- DRUID, MAGE ect ect...
if K.Class == "DRUID" then

end

-- Role type needs to be uppercase -- TANK, HEALER, CASTER, MELEE
if K.Role == "Tank" then

end

-- Per character name config (overwrite general and class)
-- Name needs to be case sensitive
if K.Name == "CharacterName" then

end

-- Per max character level config (overwrite general, class and name)
if K.Level ~= MAX_PLAYER_LEVEL then

end

-- CharacterName personal config
if (K.Name == "CharacterName") and (K.Realm == "RealmName") then

end

-- CharacterName personal config
if (K.Name == "CharacterName" or K.Name == "CharacterName" or K.Name == "CharacterName" or K.Name == "CharacterName") and (K.Realm == "RealmName") then

end