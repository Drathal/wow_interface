local E, L, V, P, G = unpack(ElvUI);
local Het = E:NewModule("ElvUI_Hetsig")
local EP = LibStub("LibElvUIPlugin-1.0")
local addon = ...
local layout = E.db.layoutSet
local install = E.private["install_complete"]

local function setUpBar(num)

	local size = 32

	E.db["actionbar"]["bar"..num]["enable"] = true
	E.db["actionbar"]["bar"..num]["enabled"] = true
	E.db["actionbar"]["bar"..num]["showGrid"] = true
	E.db["actionbar"]["bar"..num]["buttonsPerRow"] = 2
	E.db["actionbar"]["bar"..num]["backdrop"] = false
	E.db["actionbar"]["bar"..num]["backdropSpacing"] = 0
	E.db["actionbar"]["bar"..num]["buttonspacing"] = 1
	E.db["actionbar"]["bar"..num]["mouseover"] = false
	E.db["actionbar"]["bar"..num]["buttons"] = 12
	E.db["actionbar"]["bar"..num]["buttonsPerRow"] = 12
	E.db["actionbar"]["bar"..num]["buttonsize"] = size

	E.db["movers"]["ElvAB_"..num] = "BOTTOM,ElvUIParent,BOTTOM,0,"..(num * (size+1))

	if num == 1 then
		E.db["actionbar"]["bar"..num]["paging"]["ROGUE"] = "[stance:1] 1;  [stance:2] 1; [stance:3] 1;"
	end

	if num == 4 or num == 5 then
		E.db["actionbar"]["bar"..num]["buttonsPerRow"] = 4
		E.db["actionbar"]["bar"..num]["mouseover"] = true
	end

	if num == 4 then
		E.db["movers"]["ElvAB_"..num] = "BOTTOMRIGHT,ElvUI_Bar1,BOTTOMLEFT,-1,0"
	end

	if num == 5 then
		E.db["movers"]["ElvAB_"..num] = "BOTTOMLEFT,ElvUI_Bar1,BOTTOMRIGHT,1,0"
	end

	if num == 6 then
		E.db["actionbar"]["bar"..num]["enable"] = false
		E.db["actionbar"]["bar"..num]["enabled"] = false
	end

end

function HetsigInstall:ElvUI(theme)
	E.private.theme = theme

	if E.db['movers'] then 
		table.wipe(E.db['movers'])
	else 
		E.db['movers'] = {} 
	end

	if theme == "Hetsig" then

		-- Custom created tables if they don't exist already.
		if not E.db["unitframe"]["units"]["player"]["customTexts"] then
			E.db["unitframe"]["units"]["player"]["customTexts"] = {}
		end
		if not E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"] then
			E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"] = {}
		end
		if not E.db["unitframe"]["units"]["target"]["customTexts"] then
			E.db["unitframe"]["units"]["target"]["customTexts"] = {}
		end
		if not E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"] then
			E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"] = {}
		end

		-- Don't forget to add new Filter spells here.
		if not E.global["unitframe"]["buffwatch"] then
			E.global["unitframe"]["buffwatch"] = {}
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"] then
			E.global["unitframe"]["buffwatch"]["PALADIN"] = {}
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"][200025] then
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025] = {}
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["color"] = {}
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["enabled"] = true
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["anyUnit"] = false
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["point"] = "TOPRIGHT"
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["color"]["b"] = 0
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["color"]["g"] = 0
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["color"]["r"] = 1
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["id"] = 200025
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["xOffset"] = 0
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["style"] = "coloredIcon"
				E.global["unitframe"]["buffwatch"]["PALADIN"][200025]["yOffset"] = 0
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"][183415] then
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["color"] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["enabled"] = false
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["point"] = "BOTTOMLEFT"
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["id"] = 183415
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["yOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["style"] = "coloredIcon"
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["xOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["color"]["b"] = 0.96862745098039
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["color"]["g"] = 1
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["color"]["r"] = 0.72549019607843
			E.global["unitframe"]["buffwatch"]["PALADIN"][183415]["onlyShowMissing"] = false
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"][31821] then
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["color"] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["enabled"] = true
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["point"] = "BOTTOMRIGHT"
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["id"] = 31821
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["yOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["style"] = "coloredIcon"
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["xOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["color"]["b"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["color"]["g"] = 0.87450980392157
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["color"]["r"] = 1
			E.global["unitframe"]["buffwatch"]["PALADIN"][31821]["onlyShowMissing"] = false
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"][223306] then
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["color"] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["enabled"] = true
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["point"] = "TOPRIGHT"
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["id"] = 223306
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["yOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["style"] = "coloredIcon"
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["xOffset"] = -10
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["color"]["b"] = 0.62745098039216
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["color"]["g"] = 0.39607843137255
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["color"]["r"] = 1
			E.global["unitframe"]["buffwatch"]["PALADIN"][223306]["onlyShowMissing"] = false
		end
		if not E.global["unitframe"]["buffwatch"]["PALADIN"][53563] then
			E.global["unitframe"]["buffwatch"]["PALADIN"][53563] = {}
			E.global["unitframe"]["buffwatch"]["PALADIN"][53563]["anyUnit"] = false
		end
		if not E.global["unitframe"]["buffwatch"]["PRIEST"] then
			E.global["unitframe"]["buffwatch"]["PRIEST"] = {}
		end
		if not E.global["unitframe"]["buffwatch"]["PRIEST"][202685] then
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685] = {}
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["color"] = {}
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["enabled"] = false
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["point"] = "TOPRIGHT"
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["id"] = 202685
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["color"]["r"] = 1
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["color"]["g"] = 0
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["color"]["b"] = 0
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["style"] = "coloredIcon"
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["xOffset"] = 0
			E.global["unitframe"]["buffwatch"]["PRIEST"][202685]["yOffset"] = 0
		end
		if not E.global["unitframe"]["buffwatch"]["DRUID"] then
			E.global["unitframe"]["buffwatch"]["DRUID"] = {}
		end
		if not E.global["unitframe"]["buffwatch"]["DRUID"][155777] then
			E.global["unitframe"]["buffwatch"]["DRUID"][155777] = {}
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["color"] = {}
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["point"] = "TOPRIGHT"
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["color"]["b"] = 0
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["color"]["g"] = 0
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["color"]["r"] = 1
			E.global["unitframe"]["buffwatch"]["DRUID"][155777]["xOffset"] = -10
		end
		if not E.global["unitframe"]["buffwatch"]["DRUID"][200389] then
			E.global["unitframe"]["buffwatch"]["DRUID"][200389] = {}
			E.global["unitframe"]["buffwatch"]["DRUID"][200389]["point"] = "TOPRIGHT"
			E.global["unitframe"]["buffwatch"]["DRUID"][200389]["yOffset"] = -10
		end
		if not E.global["unitframe"]["buffwatch"]["MONK"]
			then E.global["unitframe"]["buffwatch"]["MONK"] = {}
		end
		if not E.global["unitframe"]["buffwatch"]["MONK"][202685] then
			E.global["unitframe"]["buffwatch"]["MONK"][202685] = {}
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["color"] = {}
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["enabled"] = false
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["anyUnit"] = false
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["point"] = "TOPRIGHT"
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["id"] = 202685
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["color"]["r"] = 1
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["color"]["g"] = 0
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["color"]["b"] = 0
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["style"] = "coloredIcon"
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["xOffset"] = 0
			E.global["unitframe"]["buffwatch"]["MONK"][202685]["yOffset"] = 0
		end
		if not E.db["unitframe"]["units"]["target"]["classicon"] then
			E.db["unitframe"]["units"]["target"]["classicon"] = {}
		end

		-- Main ElvUI export start.

		local uiWidth = _G["ElvUIParent"]:GetWidth()
		local uiHeight = _G["ElvUIParent"]:GetHeight()
		local barWidth = _G["ElvUI_Bar1"]:GetWidth()

		E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-"..(barWidth * 0.75)..","..(uiHeight * 0.355)
		E.db["movers"]["PlayerPowerBarMover"] = "TOP,ElvUF_Player,BOTTOM,0,1"
		E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,"..(uiHeight * 0.3845)
		E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUF_Player,TOP,0,1"

		E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,"..(barWidth * 0.75)..","..(uiHeight * 0.355)
		E.db["movers"]["TargetPowerBarMover"] = "TOP,ElvUF_Target,BOTTOM,0,1"
		E.db["movers"]["ElvUF_TargetCastbarMover"] = "TOP,ElvUF_Target,BOTTOM,0,1"

		E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-30"
		E.db["movers"]["MicrobarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0"
		E.db["movers"]["BuffsMover"] = "TOPRIGHT,Minimap,TOPLEFT,-5,0"
		E.db["movers"]["DebuffsMover"] = "BOTTOMRIGHT,Minimap,BOTTOMLEFT,-5,0"
		E.db["movers"]["SquareMinimapBar"] = "TOPRIGHT,Minimap,BOTTOMRIGHT,0,0"

		E.db["movers"]["ElvUF_PartyMover"] = "TOP,ElvUIParent,TOP,0,-"..(uiHeight * 0.655)
		E.db["movers"]["ElvUF_RaidMover"] = "TOP,ElvUIParent,TOP,0,-"..(uiHeight * 0.655)
		E.db["movers"]["ElvUF_Raid40Mover"] = "TOP,ElvUIParent,TOP,0,-"..(uiHeight * 0.650)

		E.db["movers"]["ElvUF_FocusCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,282"
		E.db["movers"]["RaidMarkerBarAnchor"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-28,231"
		E.db["movers"]["MinimapButtonAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-26,-185"

		E.db["movers"]["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,-"..(barWidth * 0.67)..",130"
		E.db["movers"]["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,"..(barWidth * 0.67)..",130"	

		E.db["movers"]["LootFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,300,530"
		E.db["movers"]["AlertFrameMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,300,530"

		E.db["movers"]["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30"						
		E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-340"
		E.db["movers"]["ComboBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,313"
		E.db["movers"]["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-182,325"
		E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735"
		E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,281"
		E.db["movers"]["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-300"		
		E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,205"
		E.db["movers"]["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-30"
		E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,240,205"
		E.db["movers"]["ExperienceBarMover"] = "TOP,ElvUIParent,TOP,0,-30"
		E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,30"
		E.db["movers"]["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-490"
		
		E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-193,248"
		E.db["movers"]["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-240,205"
		E.db["movers"]["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-30"
		E.db["movers"]["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-30"
		E.db["movers"]["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-100"
		E.db["movers"]["ArtifactBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-177,-31"
		E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-30,-325"
		E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-82,-337"
		E.db["movers"]["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,207"
		E.db["movers"]["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,0,165"
		E.db["movers"]["CM_MOVER"] = "BOTTOM,ElvUIParent,BOTTOM,0,150"
		E.db["movers"]["HonorBarMover"] = "TOP,ElvUIParent,TOP,0,-66"
		E.db["movers"]["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,0"
		E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-29,232"
		E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,30,894"
		E.db["movers"]["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,30,-297"
		E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,30"		

		E.db["actionbar"]["microbar"]["enabled"] = true
		E.db["actionbar"]["microbar"]["mouseover"] = true
		E.db["actionbar"]["keyDown"] = false
		E.db["actionbar"]["globalFadeAlpha"] = 1
		E.db["actionbar"]["fontOutline"] = "OUTLINE"
		E.db["actionbar"]["font"] = "Friz Quadrata TT"
		E.db["actionbar"]["fontSize"] = 12

		setUpBar(1)
		setUpBar(2)
		setUpBar(3)
		setUpBar(4)
		setUpBar(5)
		setUpBar(6)

		E.db["actionbar"]["stanceBar"]["enabled"] = false
		E.db["actionbar"]["stanceBar"]["point"] = "BOTTOM"
		E.db["actionbar"]["stanceBar"]["showGrid"] = true
		E.db["actionbar"]["stanceBar"]["backdropSpacing"] = 0
		E.db["actionbar"]["stanceBar"]["mouseover"] = true
		E.db["actionbar"]["stanceBar"]["buttonspacing"] = 1

		E.db["actionbar"]["barPet"]["point"] = "BOTTOMLEFT"
		E.db["actionbar"]["barPet"]["buttonspacing"] = 1
		E.db["actionbar"]["barPet"]["backdrop"] = false
		E.db["actionbar"]["barPet"]["style"] = "darkenInactive"
		E.db["actionbar"]["barPet"]["mouseover"] = true
		E.db["actionbar"]["barPet"]["showGrid"] = true
		E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
		E.db["actionbar"]["barPet"]["buttonsize"] = 17
		E.db["actionbar"]["barPet"]["backdropSpacing"] = 0
		E.db["actionbar"]["backdropSpacingConverted"] = true


		E.db["databars"]["artifact"]["enable"] = false
		E.db["databars"]["artifact"]["height"] = 151
		E.db["databars"]["artifact"]["font"] = "Friz Quadrata TT"
		E.db["databars"]["artifact"]["textSize"] = 12
		E.db["databars"]["artifact"]["width"] = 5

		E.db["databars"]["reputation"]["enable"] = false
		E.db["databars"]["reputation"]["font"] = "Friz Quadrata TT"
		E.db["databars"]["reputation"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["reputation"]["textFormat"] = "PERCENT"
		E.db["databars"]["reputation"]["height"] = 32
		E.db["databars"]["reputation"]["textSize"] = 12
		E.db["databars"]["reputation"]["width"] = 395

		E.db["databars"]["experience"]["enable"] = false
		E.db["databars"]["experience"]["font"] = "Friz Quadrata TT"
		E.db["databars"]["experience"]["textFormat"] = "CURPERC"
		E.db["databars"]["experience"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["experience"]["height"] = 32
		E.db["databars"]["experience"]["textSize"] = 12
		E.db["databars"]["experience"]["width"] = 395

		E.db["databars"]["honor"]["enable"] = false
		E.db["databars"]["honor"]["textFormat"] = "PERCENT"
		E.db["databars"]["honor"]["textSize"] = 12
		E.db["databars"]["honor"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["honor"]["height"] = 32
		E.db["databars"]["honor"]["mouseover"] = true
		E.db["databars"]["honor"]["width"] = 395

		E.db["datatexts"]["minimapPanels"] = false
		E.db["datatexts"]["fontSize"] = 12
		E.db["datatexts"]["minimapBottom"] = true
		E.db["datatexts"]["actionbar5"] = false
		E.db["datatexts"]["font"] = "Friz Quadrata TT"
		E.db["datatexts"]["battleground"] = false
		E.db["datatexts"]["fontOutline"] = "OUTLINE"
		E.db["datatexts"]["actionbar1"] = false
		E.db["datatexts"]["actionbar3"] = false
		E.db["datatexts"]["minimapPanels"] = false
		E.db["datatexts"]["fontSize"] = 11
		E.db["datatexts"]["minimapBottom"] = true
		E.db["datatexts"]["actionbar5"] = false
		E.db["datatexts"]["font"] = "Friz Quadrata TT"
		E.db["datatexts"]["battleground"] = false
		E.db["datatexts"]["fontOutline"] = "OUTLINE"
		E.db["datatexts"]["actionbar1"] = false
		E.db["datatexts"]["actionbar3"] = false
		E.db["general"]["totems"]["enable"] = false
		E.db["general"]["totems"]["size"] = 43
		E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
		E.db["general"]["fontSize"] = 11
		E.db["general"]["afk"] = false
		E.db["general"]["autoRepair"] = "GUILD"
		E.db["general"]["minimap"]["size"] = 200
		E.db["general"]["minimap"]["locationFont"] = "Friz Quadrata TT"
		E.db["general"]["minimap"]["icons"]["lfgEye"]["scale"] = 0.9
		E.db["general"]["minimap"]["icons"]["lfgEye"]["yOffset"] = -2
		E.db["general"]["minimap"]["icons"]["lfgEye"]["xOffset"] = 0
		E.db["general"]["minimap"]["icons"]["lfgEye"]["position"] = "BOTTOMLEFT"
		E.db["general"]["minimap"]["icons"]["classHall"]["scale"] = 0.5
		E.db["general"]["minimap"]["icons"]["classHall"]["position"] = "BOTTOMRIGHT"
		E.db["general"]["minimap"]["icons"]["vehicleLeave"]["size"] = 25
		E.db["general"]["bottomPanel"] = false
		E.db["general"]["backdropfadecolor"]["a"] = 0.8
		E.db["general"]["backdropfadecolor"]["b"] = 0
		E.db["general"]["backdropfadecolor"]["g"] = 0
		E.db["general"]["backdropfadecolor"]["r"] = 0
		E.db["general"]["objectiveFrameHeight"] = 500
		E.db["general"]["chatBubbleFont"] = "Friz Quadrata TT"
		E.db["general"]["dmgfont"] = "Friz Quadrata TT"
		E.db["general"]["loginmessage"] = false
		E.db["general"]["threat"]["enable"] = false
		E.db["general"]["threat"]["position"] = "LEFTCHAT"
		E.db["general"]["backdropcolor"]["b"] = 0.0470588235294118
		E.db["general"]["backdropcolor"]["g"] = 0.0470588235294118
		E.db["general"]["backdropcolor"]["r"] = 0.0470588235294118
		E.db["general"]["vendorGrays"] = true
		E.db["general"]["bordercolor"]["b"] = 0
		E.db["general"]["bordercolor"]["g"] = 0
		E.db["general"]["bordercolor"]["r"] = 0
		E.db["general"]["font"] = "Friz Quadrata TT"
		E.db["general"]["namefont"] = "Friz Quadrata TT"
		E.db["general"]["topPanel"] = false
		E.db["general"]["talkingHeadFrameScale"] = 0.7		
		E.db["bags"]["countFontSize"] = 12
		E.db["bags"]["itemLevelFont"] = "Friz Quadrata TT"
		E.db["bags"]["ignoreItems"] = ""
		E.db["bags"]["itemLevelFontSize"] = 12
		E.db["bags"]["alignToChat"] = false
		E.db["bags"]["junkIcon"] = true
		E.db["bags"]["countFont"] = "Friz Quadrata TT"
		E.db["bags"]["clearSearchOnClose"] = true
		E.db["bags"]["countFontOutline"] = "OUTLINE"
		E.db["bags"]["bankSize"] = 32
		E.db["bags"]["bankWidth"] = 550
		E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
		E.db["bags"]["bagBar"]["enable"] = false
		E.db["bags"]["bagSize"] = 32
		E.db["bags"]["bagWidth"] = 380
		E.db["tooltip"]["itemCount"] = "NONE"
		E.db["tooltip"]["healthBar"]["height"] = 10
		E.db["tooltip"]["healthBar"]["fontSize"] = 11
		E.db["tooltip"]["healthBar"]["font"] = "Friz Quadrata TT"
		E.db["tooltip"]["fontOutline"] = "OUTLINE"
		E.db["tooltip"]["headerFontSize"] = 12
		E.db["tooltip"]["textFontSize"] = 11
		E.db["tooltip"]["font"] = "Friz Quadrata TT"
		E.db["tooltip"]["smallTextFontSize"] = 11
		E.db["tooltip"]["targetInfo"] = false
		E.db["tooltip"]["guildRanks"] = false
		E.db["tooltip"]["spellID"] = true
		E.db["auras"]["debuffs"]["horizontalSpacing"] = 1
		E.db["auras"]["debuffs"]["maxWraps"] = 2
		E.db["auras"]["fontOutline"] = "OUTLINE"
		E.db["auras"]["fontSize"] = 12
		E.db["auras"]["buffs"]["horizontalSpacing"] = 1
		E.db["auras"]["buffs"]["maxWraps"] = 2
		E.db["auras"]["timeYOffset"] = -6
		E.db["auras"]["font"] = "Friz Quadrata TT"

		E.db["unitframe"]["fontSize"] = 11
		E.db["unitframe"]["units"]["targettarget"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["targettarget"]["rangeCheck"] = false
		E.db["unitframe"]["units"]["targettarget"]["width"] = 85
		E.db["unitframe"]["units"]["targettarget"]["height"] = 25
		E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:veryshort]"

		E.db["unitframe"]["units"]["tank"]["buffIndicator"]["enable"] = false
		E.db["unitframe"]["units"]["tank"]["buffs"]["priority"] = "blockNoDuration"

		E.db["unitframe"]["units"]["boss"]["debuffs"]["numrows"] = 1
		E.db["unitframe"]["units"]["boss"]["debuffs"]["fontSize"] = 22
		E.db["unitframe"]["units"]["boss"]["debuffs"]["xOffset"] = 3
		E.db["unitframe"]["units"]["boss"]["debuffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["boss"]["debuffs"]["sizeOverride"] = 35
		E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = 0
		E.db["unitframe"]["units"]["boss"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["boss"]["width"] = 175
		E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = "[name:medium]"
		E.db["unitframe"]["units"]["boss"]["castbar"]["width"] = 175
		E.db["unitframe"]["units"]["boss"]["height"] = 35
		E.db["unitframe"]["units"]["boss"]["buffs"]["fontSize"] = 22
		E.db["unitframe"]["units"]["boss"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["boss"]["buffs"]["sizeOverride"] = 35
		E.db["unitframe"]["units"]["boss"]["buffs"]["xOffset"] = -3
		E.db["unitframe"]["units"]["boss"]["buffs"]["yOffset"] = 0
		E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = "[health:percent]"
		E.db["unitframe"]["units"]["boss"]["health"]["position"] = "RIGHT"

		E.db["unitframe"]["units"]["raid"]["horizontalSpacing"] = 1
		E.db["unitframe"]["units"]["raid"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 30
		E.db["unitframe"]["units"]["raid"]["debuffs"]["onlyDispellable"] = true
		E.db["unitframe"]["units"]["raid"]["debuffs"]["anchorPoint"] = "CENTER"
		E.db["unitframe"]["units"]["raid"]["debuffs"]["perrow"] = 1
		E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = -1
		E.db["unitframe"]["units"]["raid"]["enable"] = true
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["growthDirection"] = "LEFT_DOWN"
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 0
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["position"] = "BOTTOM"
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["enable"] = true
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 11
		E.db["unitframe"]["units"]["raid"]["raidWideSorting"] = false
		E.db["unitframe"]["units"]["raid"]["power"]["height"] = 4
		E.db["unitframe"]["units"]["raid"]["power"]["position"] = "RIGHT"
		E.db["unitframe"]["units"]["raid"]["power"]["text_format"] = "[powercolor]"
		E.db["unitframe"]["units"]["raid"]["power"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid"]["orientation"] = "LEFT"
		E.db["unitframe"]["units"]["raid"]["healPrediction"] = true
		E.db["unitframe"]["units"]["raid"]["health"]["frequentUpdates"] = true
		E.db["unitframe"]["units"]["raid"]["health"]["position"] = "LEFT"
		E.db["unitframe"]["units"]["raid"]["health"]["xOffset"] = 2
		E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["health"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid"]["width"] = 64
		E.db["unitframe"]["units"]["raid"]["infoPanel"]["height"] = 15
		E.db["unitframe"]["units"]["raid"]["infoPanel"]["transparent"] = true
		E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 1
		E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = "[name:short]"
		E.db["unitframe"]["units"]["raid"]["startFromCenter"] = false
		E.db["unitframe"]["units"]["raid"]["height"] = 35
		E.db["unitframe"]["units"]["raid"]["buffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["raid"]["buffs"]["sizeOverride"] = 20
		E.db["unitframe"]["units"]["raid"]["buffs"]["xOffset"] = -47
		E.db["unitframe"]["units"]["raid"]["buffs"]["perrow"] = 2
		E.db["unitframe"]["units"]["raid"]["visibility"] = "[@raid6,noexists][@raid26,exists] hide;show"

		E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["pet"]["rangeCheck"] = false
		E.db["unitframe"]["units"]["pet"]["buffs"]["enable"] = true
		E.db["unitframe"]["units"]["pet"]["width"] = 85
		E.db["unitframe"]["units"]["pet"]["insideInfoPanel"] = false
		E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["pet"]["health"]["attachTextTo"] = "Health"
		E.db["unitframe"]["units"]["pet"]["health"]["xOffset"] = 0
		E.db["unitframe"]["units"]["pet"]["health"]["text_format"] = "[name:short]"
		E.db["unitframe"]["units"]["pet"]["health"]["position"] = "CENTER"
		E.db["unitframe"]["units"]["pet"]["height"] = 25
		E.db["unitframe"]["units"]["pet"]["buffIndicator"]["enable"] = false
		E.db["unitframe"]["units"]["pet"]["threatStyle"] = "NONE"
		E.db["unitframe"]["units"]["pet"]["castbar"]["iconXOffset"] = -1
		E.db["unitframe"]["units"]["pet"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["iconSize"] = 25
		E.db["unitframe"]["units"]["pet"]["castbar"]["iconAttached"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 25
		E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 85

		E.db["unitframe"]["units"]["assist"]["enable"] = false

		E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 1
		E.db["unitframe"]["units"]["party"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 30
		E.db["unitframe"]["units"]["party"]["debuffs"]["onlyDispellable"] = true
		E.db["unitframe"]["units"]["party"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "BOTTOM"
		E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 1
		E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = -1
		E.db["unitframe"]["units"]["party"]["growthDirection"] = "LEFT_DOWN"
		E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = 0
		E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = 0
		E.db["unitframe"]["units"]["party"]["roleIcon"]["position"] = "BOTTOM"
		E.db["unitframe"]["units"]["party"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["party"]["roleIcon"]["enable"] = true	
		E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 11	
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["height"] = 16
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["yOffset"] = 1
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["xOffset"] = 0
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["width"] = 65
		E.db["unitframe"]["units"]["party"]["power"]["text_format"] = "[powercolor]"
		E.db["unitframe"]["units"]["party"]["power"]["height"] = 4
		E.db["unitframe"]["units"]["party"]["healPrediction"] = true
		E.db["unitframe"]["units"]["party"]["width"] = 80
		E.db["unitframe"]["units"]["party"]["infoPanel"]["transparent"] = true
		E.db["unitframe"]["units"]["party"]["health"]["frequentUpdates"] = true
		E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["name"]["xOffset"] = 1
		E.db["unitframe"]["units"]["party"]["name"]["text_format"] = "[name:short]"
		E.db["unitframe"]["units"]["party"]["buffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 20
		E.db["unitframe"]["units"]["party"]["buffs"]["xOffset"] = -47
		E.db["unitframe"]["units"]["party"]["buffs"]["perrow"] = 2
		E.db["unitframe"]["units"]["party"]["height"] = 45
		E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 1
		E.db["unitframe"]["units"]["party"]["visibility"] = "[@raid6,exists][nogroup] hide;show"

		E.db["unitframe"]["units"]["raid40"]["horizontalSpacing"] = 1
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["sizeOverride"] = 30
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["onlyDispellable"] = true
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["anchorPoint"] = "BOTTOM"
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["perrow"] = 1
		E.db["unitframe"]["units"]["raid40"]["debuffs"]["yOffset"] = -1
		E.db["unitframe"]["units"]["raid40"]["portrait"]["camDistanceScale"] = 2
		E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["size"] = 26
		E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "LEFT_DOWN"
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["xOffset"] = 0
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["position"] = "BOTTOM"
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true		
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["size"] = 11		
		E.db["unitframe"]["units"]["raid40"]["power"]["position"] = "RIGHT"
		E.db["unitframe"]["units"]["raid40"]["power"]["enable"] = true
		E.db["unitframe"]["units"]["raid40"]["power"]["height"] = 4
		E.db["unitframe"]["units"]["raid40"]["power"]["text_format"] = "[powercolor]"
		E.db["unitframe"]["units"]["raid40"]["power"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid40"]["healPrediction"] = true
		E.db["unitframe"]["units"]["raid40"]["name"]["xOffset"] = 1
		E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = "[name:short]"
		E.db["unitframe"]["units"]["raid40"]["width"] = 64
		E.db["unitframe"]["units"]["raid40"]["infoPanel"]["height"] = 15
		E.db["unitframe"]["units"]["raid40"]["infoPanel"]["transparent"] = true
		E.db["unitframe"]["units"]["raid40"]["height"] = 29
		E.db["unitframe"]["units"]["raid40"]["health"]["frequentUpdates"] = true
		E.db["unitframe"]["units"]["raid40"]["health"]["position"] = "LEFT"
		E.db["unitframe"]["units"]["raid40"]["health"]["xOffset"] = 2
		E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid40"]["health"]["yOffset"] = 0
		E.db["unitframe"]["units"]["raid40"]["buffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["raid40"]["buffs"]["sizeOverride"] = 20
		E.db["unitframe"]["units"]["raid40"]["buffs"]["xOffset"] = -47
		E.db["unitframe"]["units"]["raid40"]["buffs"]["priority"] = "HetsigRaid,Blacklist,TurtleBuffs"
		E.db["unitframe"]["units"]["raid40"]["buffs"]["perrow"] = 2
		E.db["unitframe"]["units"]["raid40"]["orientation"] = "LEFT"
		E.db["unitframe"]["units"]["raid40"]["verticalSpacing"] = 1
		E.db["unitframe"]["units"]["raid40"]["visibility"] = "[@raid26,noexists] hide;show"

		E.db["unitframe"]["units"]["focus"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["threatStyle"] = "NONE"
		E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["power"]["height"] = 3
		E.db["unitframe"]["units"]["focus"]["power"]["text_format"] = "[name]"
		E.db["unitframe"]["units"]["focus"]["power"]["attachTextTo"] = "Frame"
		E.db["unitframe"]["units"]["focus"]["rangeCheck"] = false
		E.db["unitframe"]["units"]["focus"]["width"] = 179
		E.db["unitframe"]["units"]["focus"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 28
		E.db["unitframe"]["units"]["focus"]["castbar"]["format"] = "Remaining"
		E.db["unitframe"]["units"]["focus"]["castbar"]["icon"] = false
		E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 179
		E.db["unitframe"]["units"]["focus"]["health"]["xOffset"] = 0
		E.db["unitframe"]["units"]["focus"]["health"]["text_format"] = "[name]"
		E.db["unitframe"]["units"]["focus"]["health"]["position"] = "CENTER"
		E.db["unitframe"]["units"]["focus"]["name"]["attachTextTo"] = "InfoPanel"
		E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["focus"]["height"] = 30

		E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "BOTTOMLEFT"
		E.db["unitframe"]["units"]["target"]["debuffs"]["fontSize"] = 11
		E.db["unitframe"]["units"]["target"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 31
		E.db["unitframe"]["units"]["target"]["threatStyle"] = "NONE"
		E.db["unitframe"]["units"]["target"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["target"]["power"]["height"] = 15
		E.db["unitframe"]["units"]["target"]["power"]["strataAndLevel"]["frameLevel"] = 2
		E.db["unitframe"]["units"]["target"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 184
		E.db["unitframe"]["units"]["target"]["power"]["xOffset"] = 0
		E.db["unitframe"]["units"]["target"]["power"]["text_format"] = "[health:percent]"
		E.db["unitframe"]["units"]["target"]["power"]["yOffset"] = -1
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["attachTextTo"] = "Health"
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["justifyH"] = "Right"
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["xOffset"] = -11
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["size"] = 32
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["text_format"] = "[health:current]"
		E.db["unitframe"]["units"]["target"]["customTexts"]["HealthText"]["yOffset"] = -11
		E.db["unitframe"]["units"]["target"]["width"] = 184
		E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["name"]["position"] = "LEFT"
		E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["classicon"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["height"] = 30
		E.db["unitframe"]["units"]["target"]["buffs"]["attachTo"] = "POWER"
		E.db["unitframe"]["units"]["target"]["buffs"]["fontSize"] = 11
		E.db["unitframe"]["units"]["target"]["buffs"]["priority"] = "Blacklist,Whitelist,blockNoDuration,Personal,Boss,PlayerBuffs,nonPersonal"
		E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "BOTTOMLEFT"
		E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = -1
		E.db["unitframe"]["units"]["target"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["target"]["castbar"]["latency"] = false
		E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 17
		E.db["unitframe"]["units"]["target"]["castbar"]["format"] = "Remaining"
		E.db["unitframe"]["units"]["target"]["castbar"]["icon"] = false
		E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 184
		E.db["unitframe"]["units"]["target"]["aurabar"]["anchorPoint"] = "Below"
		E.db["unitframe"]["units"]["target"]["aurabar"]["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Boss,RaidDebuffs"
		E.db["unitframe"]["units"]["target"]["aurabar"]["attachTo"] = "Debuffs"

		E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = 2
		E.db["unitframe"]["units"]["arena"]["debuffs"]["fontSize"] = 11
		E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 18
		E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = -10
		E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["width"] = 225
		E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = "[health:current]"
		E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = "[name:veryshort]"
		E.db["unitframe"]["units"]["arena"]["height"] = 40
		E.db["unitframe"]["units"]["arena"]["buffs"]["anchorPoint"] = "RIGHT"
		E.db["unitframe"]["units"]["arena"]["buffs"]["fontSize"] = 11
		E.db["unitframe"]["units"]["arena"]["buffs"]["xOffset"] = 2
		E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 18
		E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = 10
		E.db["unitframe"]["units"]["arena"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["arena"]["castbar"]["height"] = 10
		E.db["unitframe"]["units"]["arena"]["castbar"]["format"] = ""
		E.db["unitframe"]["units"]["arena"]["castbar"]["icon"] = false
		E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 225

		E.db["unitframe"]["units"]["player"]["combatfade"] = true
		E.db["unitframe"]["units"]["player"]["debuffs"]["anchorPoint"] = "LEFT"
		E.db["unitframe"]["units"]["player"]["debuffs"]["fontSize"] = 16
		E.db["unitframe"]["units"]["player"]["debuffs"]["sizeOverride"] = 46
		E.db["unitframe"]["units"]["player"]["debuffs"]["xOffset"] = -1
		E.db["unitframe"]["units"]["player"]["debuffs"]["attachTo"] = "Frame"
		E.db["unitframe"]["units"]["player"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = -8
		E.db["unitframe"]["units"]["player"]["combatIcon"] = false
		E.db["unitframe"]["units"]["player"]["aurabar"]["height"] = 18
		E.db["unitframe"]["units"]["player"]["aurabar"]["attachTo"] = "BUFFS"
		E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["threatStyle"] = "ICONBOTTOMLEFT"
		E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 184
		E.db["unitframe"]["units"]["player"]["power"]["height"] = 15
		E.db["unitframe"]["units"]["player"]["power"]["druidMana"] = false
		E.db["unitframe"]["units"]["player"]["power"]["text_format"] = "[power:current]"
		E.db["unitframe"]["units"]["player"]["power"]["yOffset"] = -22
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["attachTextTo"] = "Health"
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["font"] = "Friz Quadrata TT"
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["justifyH"] = "LEFT"
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["xOffset"] = 11
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["yOffset"] = -11
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["customTexts"]["HealthText"]["size"] = 32
		E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 184
		E.db["unitframe"]["units"]["player"]["classbar"]["height"] = 15
		E.db["unitframe"]["units"]["player"]["classbar"]["additionalPowerText"] = false
		E.db["unitframe"]["units"]["player"]["stagger"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["width"] = 184
		E.db["unitframe"]["units"]["player"]["castbar"]["attachTo"] = ""
		E.db["unitframe"]["units"]["player"]["castbar"]["font"] = "Friz Quadrata TT"
		E.db["unitframe"]["units"]["player"]["castbar"]["fontsize"] = 13
		E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 20
		E.db["unitframe"]["units"]["player"]["castbar"]["format"] = "Remaining"
		E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 324
		E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["height"] = 30
		E.db["unitframe"]["units"]["player"]["buffs"]["anchorPoint"] = "CENTER"
		E.db["unitframe"]["units"]["player"]["buffs"]["priority"] = "Whitelist,Blacklist,Personal,PlayerBuffs,blockNoDuration,nonPersonal"
		E.db["unitframe"]["units"]["player"]["buffs"]["attachTo"] = "Frame"
		E.db["unitframe"]["units"]["player"]["buffs"]["yOffset"] = 4
		E.db["unitframe"]["units"]["player"]["raidicon"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["pvp"]["text_format"] = ""

		E.db["unitframe"]["statusbar"] = "Skullflower"

		E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
		E.db["unitframe"]["colors"]["healthclass"] = true
		E.db["unitframe"]["colors"]["customhealthbackdrop"] = true
		E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0.070588235294118
		E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0.070588235294118
		E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0.070588235294118
		E.db["unitframe"]["colors"]["power"]["MANA"]["b"] = 0.90196078431373
		E.db["unitframe"]["colors"]["power"]["MANA"]["g"] = 0.74509803921569
		E.db["unitframe"]["colors"]["power"]["MANA"]["r"] = 0
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["b"] = 0.23529411764706
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["g"] = 0.54901960784314
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["r"] = 0.90196078431373
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["b"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["g"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["r"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["b"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["g"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["r"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["RAGE"]["b"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["RAGE"]["g"] = 0.27450980392157
		E.db["unitframe"]["colors"]["power"]["RAGE"]["r"] = 0.27450980392157
		E.db["unitframe"]["colors"]["castColor"]["b"] = 0.27450980392157
		E.db["unitframe"]["colors"]["castColor"]["g"] = 0.27450980392157
		E.db["unitframe"]["colors"]["castColor"]["r"] = 0.27450980392157
		E.db["unitframe"]["colors"]["disconnected"]["b"] = 0.85098039215686
		E.db["unitframe"]["colors"]["disconnected"]["g"] = 0.7921568627451
		E.db["unitframe"]["colors"]["disconnected"]["r"] = 0.76470588235294
		E.db["unitframe"]["colors"]["castNoInterrupt"]["b"] = 0.27450980392157
		E.db["unitframe"]["colors"]["castNoInterrupt"]["g"] = 0.27450980392157
		E.db["unitframe"]["colors"]["castNoInterrupt"]["r"] = 0.3921568627451
		E.db["unitframe"]["colors"]["tapped"]["b"] = 0.85098039215686
		E.db["unitframe"]["colors"]["tapped"]["g"] = 0.7921568627451
		E.db["unitframe"]["colors"]["tapped"]["r"] = 0.76470588235294
		E.db["unitframe"]["colors"]["health"]["b"] = 0.40392156862745
		E.db["unitframe"]["colors"]["health"]["g"] = 1
		E.db["unitframe"]["colors"]["health"]["r"] = 0.41960784313726
		E.db["unitframe"]["colors"]["reaction"]["BAD"]["b"] = 0.19555555555556
		E.db["unitframe"]["colors"]["reaction"]["BAD"]["g"] = 0.13777777777778
		E.db["unitframe"]["colors"]["reaction"]["BAD"]["r"] = 1
		E.db["unitframe"]["colors"]["reaction"]["NEUTRAL"]["b"] = 0.36862745098039
		E.db["unitframe"]["colors"]["reaction"]["NEUTRAL"]["g"] = 0.97647058823529
		E.db["unitframe"]["colors"]["reaction"]["NEUTRAL"]["r"] = 1
		E.db["unitframe"]["colors"]["reaction"]["GOOD"]["b"] = 0.40392156862745
		E.db["unitframe"]["colors"]["reaction"]["GOOD"]["g"] = 1
		E.db["unitframe"]["colors"]["reaction"]["GOOD"]["r"] = 0.41960784313726
		E.db["unitframe"]["colors"]["classResources"]["bgColor"]["b"] = 0.070588235294118
		E.db["unitframe"]["colors"]["classResources"]["bgColor"]["g"] = 0.070588235294118
		E.db["unitframe"]["colors"]["classResources"]["bgColor"]["r"] = 0.070588235294118
		E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["r"] = 0
		E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["r"] = 0
		E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["r"] = 0
		E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["r"] = 0
		E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["r"] = 0
		E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["b"] = 0.58823529411765
		E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["g"] = 1
		E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["r"] = 0
		E.db["unitframe"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["font"] = "Friz Quadrata TT"
		E.db["unitframe"]["smartRaidFilter"] = false
		E.db["unitframe"]["smoothbars"] = true

		E.db["bossAuraFiltersConverted"] = true
		E.db["thinBorderColorSet"] = true
		E.db["bagSortIgnoreItemsReset"] = true
		E.db["hideTutorial"] = true

		E.db["general"]["valuecolor"] = {
			["a"] = 1,
			["r"] = 0.164705882352941,
			["g"] = 0.733333333333333,
			["b"] = 0.988235294117647,
		}

		E.global["general"]["disableOrderHallBar"] = true
		E.global["general"]["autoScale"] = false
		E.global["general"]["animateConfig"] = false
		E.global["general"]["mapAlphaWhenMoving"] = 1
		E.global["general"]["commandBarSetting"] = "ENABLED"
		E.global["general"]["WorldMapCoordinates"]["position"] = "TOPLEFT"
		E.global["uiScale"] = "0.71111111111111"
		E.global["unitframe"]["ChannelTicks"]["Penance"] = 3
		E.global["userInformedNewChanges1"] = true


		E.private["general"]["autorepchange"] = true

		E.private["nameplates"] = {
			["enable"] = false,
		}

		E.private["bags"] = {
			["enable"] = false,
		}

		E.private["install_complete"] = E.version
		-- Addon export end

		-- Other ElvUI plugin settings
		if IsAddOnLoaded('ElvUI_VisualAuraTimers') then
			E.db["VAT"]["backdropTexture"] = "Skullflower"
			E.db["VAT"]["noduration"] = false
			E.db["VAT"]["showText"] = true
			E.db["VAT"]["statusbarTexture"] = "Skullflower"
		end

		if IsAddOnLoaded('ElvUI_SmartQuestTracker') then
			E.db["ElvUI_SmartQuestTracker"]["ShowDailies"] = true
		end

		if IsAddOnLoaded('ElvUI_SLE') then
			E.db["movers"]["SLE_Location_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-81,-30"
			E.db["movers"]["SLE_DataPanel_1_Mover"] = "TOP,ElvUIParent,TOP,0,0"
			E.db["datatexts"]["panels"]["SLE_DataPanel_1"]["middle"] = "Talent/Loot Specialization"
			E.db["datatexts"]["panels"]["SLE_DataPanel_1"]["left"] = "Friends"
			E.db["datatexts"]["panels"]["SLE_DataPanel_1"]["right"] = "Guild"

			E.db["sle"]["media"]["fonts"]["gossip"]["size"] = 11
			E.db["sle"]["media"]["fonts"]["gossip"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["zone"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["subzone"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["size"] = 12
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["mail"]["size"] = 11
			E.db["sle"]["media"]["fonts"]["mail"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["objective"]["size"] = 12
			E.db["sle"]["media"]["fonts"]["objective"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["objective"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["editbox"]["size"] = 11
			E.db["sle"]["media"]["fonts"]["editbox"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["media"]["fonts"]["pvp"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["bags"]["lootflash"] = false
			E.db["sle"]["bags"]["artifactPower"]["short"] = true
			E.db["sle"]["bags"]["artifactPower"]["fonts"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["bags"]["artifactPower"]["enable"] = true

			E.db["sle"]["unitframes"]["unit"]["party"]["offline"]["enable"] = true
			E.db["sle"]["unitframes"]["unit"]["party"]["offline"]["size"] = 18
			E.db["sle"]["unitframes"]["unit"]["party"]["offline"]["yOffset"] = 3
			E.db["sle"]["unitframes"]["unit"]["raid40"]["offline"]["enable"] = true
			E.db["sle"]["unitframes"]["unit"]["raid40"]["offline"]["size"] = 18
			E.db["sle"]["unitframes"]["unit"]["raid40"]["offline"]["yOffset"] = 3
			E.db["sle"]["unitframes"]["unit"]["raid"]["offline"]["enable"] = true
			E.db["sle"]["unitframes"]["unit"]["raid"]["offline"]["size"] = 18
			E.db["sle"]["unitframes"]["unit"]["raid"]["offline"]["yOffset"] = 3

			E.db["sle"]["unitframes"]["roleicons"] = "SupervillainUI"

			E.db["sle"]["loot"]["enable"] = true
			E.db["sle"]["raidmanager"]["roles"] = true
			E.db["sle"]["chat"]["tab"]["select"] = true
			E.db["sle"]["chat"]["tab"]["style"] = "HALFDEFAULT"
			E.db["sle"]["chat"]["invite"]["altInv"] = true
			E.db["sle"]["raidmarkers"]["visibility"] = "INPARTY"
			E.db["sle"]["raidmarkers"]["buttonSize"] = 24
			E.db["sle"]["tooltip"]["RaidProg"]["enable"] = true
			E.db["sle"]["tooltip"]["RaidProg"]["raids"]["trial"] = false
			E.db["sle"]["tooltip"]["RaidProg"]["raids"]["nightmare"] = false
			E.db["sle"]["screensaver"]["player"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["screensaver"]["title"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["screensaver"]["date"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["screensaver"]["subtitle"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["screensaver"]["tips"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["orderhall"]["autoOrder"]["enable"] = true
			E.db["sle"]["orderhall"]["autoOrder"]["autoEquip"] = true
			E.db["sle"]["datatexts"]["chathandle"] = false			
			E.db["sle"]["datatexts"]["panel1"]["enabled"] = true
			E.db["sle"]["datatexts"]["panel1"]["width"] = 305
			E.db["sle"]["datatexts"]["panel1"]["noback"] = true
			E.db["sle"]["datatexts"]["panel1"]["transparent"] = true
			E.db["sle"]["Armory"]["Character"]["Artifact"]["FontSize"] = 11
			E.db["sle"]["Armory"]["Character"]["Artifact"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["POWER"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["MOVESPEED"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["ATTACK_ATTACKSPEED"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["ALTERNATEMANA"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["RUNE_REGEN"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["ENERGY_REGEN"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["HEALTH"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["List"]["FOCUS_REGEN"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["ItemLevel"]["size"] = 20
			E.db["sle"]["Armory"]["Character"]["Stats"]["ItemLevel"]["font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Character"]["Stats"]["IlvlFull"] = true
			E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"]["a"] = 1
			E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"]["b"] = 0.92941176470588
			E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"]["g"] = 0.52941176470588
			E.db["sle"]["Armory"]["Character"]["Stats"]["AverageColor"]["r"] = 0.52941176470588
			E.db["sle"]["Armory"]["Character"]["Gem"]["SocketSize"] = 12
			E.db["sle"]["Armory"]["Character"]["Durability"]["FontSize"] = 12
			E.db["sle"]["Armory"]["Character"]["Durability"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Character"]["Gradation"]["Display"] = false
			E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"][1] = 0.52941176470588
			E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"][2] = 0.52941176470588
			E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"][3] = 0.92941176470588
			E.db["sle"]["Armory"]["Character"]["Gradation"]["Color"][4] = 1
			E.db["sle"]["Armory"]["Character"]["Level"]["FontSize"] = 12
			E.db["sle"]["Armory"]["Character"]["Level"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Character"]["Level"]["ShowUpgradeLevel"] = true
			E.db["sle"]["Armory"]["Character"]["Backdrop"]["SelectedBG"] = "HIDE"
			E.db["sle"]["Armory"]["Character"]["Enchant"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Character"]["Enchant"]["FontSize"] = 11
			E.db["sle"]["Armory"]["Inspect"]["Enchant"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Inspect"]["Enchant"]["FontSize"] = 11
			E.db["sle"]["Armory"]["Inspect"]["Gem"]["WarningSize"] = 15
			E.db["sle"]["Armory"]["Inspect"]["Gem"]["SocketSize"] = 12
			E.db["sle"]["Armory"]["Inspect"]["Level"]["FontSize"] = 12
			E.db["sle"]["Armory"]["Inspect"]["Level"]["Font"] = "Friz Quadrata TT"
			E.db["sle"]["Armory"]["Inspect"]["Level"]["ShowUpgradeLevel"] = true
			E.db["sle"]["Armory"]["Inspect"]["Backdrop"]["SelectedBG"] = "HIDE"
			E.db["sle"]["Armory"]["Inspect"]["Gradation"]["Display"] = false
			E.db["sle"]["Armory"]["Inspect"]["Gradation"]["CurrentClassColor"] = true
			E.db["sle"]["minimap"]["locPanel"]["autowidth"] = true
			E.db["sle"]["minimap"]["mapicons"]["iconperrow"] = 30
			E.db["sle"]["minimap"]["mapicons"]["spacing"] = 2
			E.db["sle"]["minimap"]["mapicons"]["iconmouseover"] = true
			E.db["sle"]["minimap"]["mapicons"]["iconsize"] = 22
			E.db["sle"]["quests"]["visibility"]["enable"] = true
			E.db["sle"]["quests"]["autoReward"] = true

			E.db["sle"]["skins"]["objectiveTracker"] = {}
			E.db["sle"]["skins"]["objectiveTracker"]["scenarioBG"] = true

			E.db["sle"]["raidmarkers"]["enable"] = false

			E.global["sle"]["advanced"]["confirmed"] = true
			E.private["sle"]["minimap"]["mapicons"]["enable"] = true
			E.private["sle"]["minimap"]["mapicons"]["barenable"] = true
			E.private["sle"]["minimap"]["mapicons"]["template"] = "NoBackdrop"
			E.private["sle"]["professions"]["enchant"]["enchScroll"] = true
			E.private["sle"]["install_complete"] = "3.27"
		end
	end
end

function GetOptions()
E.Options.args.profile = {
	order = 1,
	name = "|cff9482C9Drathal UI",
	type = 'group',
	args = {
		button1 = {
			order = 1,
			name = "Install",
			type = 'execute',
			func = function()
				table.wipe(E.db)
				E:CopyTable(E.db, P)
				table.wipe(E.private)
				E:CopyTable(E.private, V)
				ElvUI[1].data:SetProfile("Hetsig")
				HetsigInstall:ElvUI('Hetsig')
				HetsigInstall:ElvUI_Chat()
				if IsAddOnLoaded('Een') then
					HetsigInstall:InstallEen()
				end
				if IsAddOnLoaded('MoveAnything') then
					HetsigInstall:InstallMoveAnything()
				end
				if IsAddOnLoaded('BigWigs') then
					HetsigInstall:InstallBigWigs()
				end
				if IsAddOnLoaded('BugSack') then
					HetsigInstall:InstallAddonSimple("BugSackDB")
				end
				if IsAddOnLoaded('MaxCam') then
					HetsigInstall:InstallAddonSimple("MaxCamDB")
				end
				if IsAddOnLoaded('ParagonReputation') then
					HetsigInstall:InstallAddonSimple("ParagonReputationDB")
				end
				if IsAddOnLoaded('DoomShards') then
					HetsigInstall:InstallAddonAceProf("DoomShardsDB")
				end
				if IsAddOnLoaded('ErrorFilter') then
					HetsigInstall:InstallAddonAceProf("ErrorFilterDB")
				end
				if IsAddOnLoaded('Postal') then
					HetsigInstall:InstallAddonAceProf("Postal3DB")
				end
				if IsAddOnLoaded('Skada') then
					HetsigInstall:InstallAddonAceProf("SkadaDB")
				end
				ReloadUI()
			end,
		},
	},
}
end

function HetsigInstall:ElvUI_Chat()
	E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,30,30"
	E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,30"
	E.db["datatexts"]["panels"]["RightChatDataPanel"]["right"] = ""
	E.db["datatexts"]["panels"]["RightChatDataPanel"]["left"] = ""
	E.db["datatexts"]["panels"]["RightChatDataPanel"]["middle"] = ""
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["right"] = ""
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["left"] = ""
	E.db["datatexts"]["panels"]["LeftChatDataPanel"]["middle"] = ""
	E.db["datatexts"]["panels"]["BottomMiniPanel"] = "Time"
	E.db["datatexts"]["panels"]["RightMiniPanel"] = ""
	E.db["datatexts"]["panels"]["LeftMiniPanel"] = ""
	E.db["datatexts"]["rightChatPanel"] = false
	E.db["datatexts"]["leftChatPanel"] = false
	E.db["chat"]["emotionIcons"] = false
	E.db["chat"]["tabFont"] = "Friz Quadrata TT"
	E.db["chat"]["lfgIcons"] = false
	E.db["chat"]["panelHeightRight"] = 200
	E.db["chat"]["font"] = "Friz Quadrata TT"
	E.db["chat"]["panelBackdrop"] = "HIDEBOTH"
	E.db["chat"]["fontOutline"] = "OUTLINE"
	E.db["chat"]["panelHeight"] = 188
	E.db["chat"]["panelWidthRight"] = 450
	E.db["chat"]["tabFontOutline"] = "OUTLINE"
	E.db["chat"]["panelWidth"] = 450
end

function Het:Initialize()
	EP:RegisterPlugin(addon, GetOptions)
end

E:RegisterModule(Het:GetName())