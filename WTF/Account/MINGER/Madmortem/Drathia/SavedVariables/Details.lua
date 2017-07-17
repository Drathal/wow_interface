
_detalhes_database = {
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["active_profile"] = "Drathair-Blackhand",
	["last_realversion"] = 118,
	["ignore_nicktag"] = false,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["last_version"] = "v7.2.0.3693",
	["combat_counter"] = 4,
	["savedbuffs"] = {
	},
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["enabled"] = true,
			["dps"] = 0,
			["level"] = 1,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["v1"] = true,
			["captures"] = {
				false, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["first_run"] = false,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["author"] = "Details! Team",
			["last_encounter_hash"] = false,
			["enabled"] = true,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 0,
			["timeline_cutoff_delete_time"] = 3,
			["showing_type"] = 4,
			["InstalledAt"] = 1496066668,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["encounter_timers_dbm"] = {
			},
			["show_icon"] = 5,
			["opened"] = 0,
			["hide_on_combat"] = false,
		},
		["DETAILS_PLUGIN_CHART_VIEWER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["tabs"] = {
				{
					["name"] = "Your Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Player Damage Done",
					["texture"] = "line",
				}, -- [1]
				{
					["name"] = "Class Damage",
					["iType"] = "raid-DAMAGER",
					["segment_type"] = 1,
					["version"] = "v2.0",
					["data"] = "PRESET_DAMAGE_SAME_CLASS",
					["texture"] = "line",
				}, -- [2]
				{
					["name"] = "Raid Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Raid Damage Done",
					["texture"] = "line",
				}, -- [3]
				["last_selected"] = 1,
			},
			["options"] = {
				["show_method"] = 4,
				["auto_create"] = true,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["enabled"] = true,
			["animate"] = false,
			["useplayercolor"] = false,
			["author"] = "Details! Team",
			["useclasscolors"] = false,
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["showamount"] = false,
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["tank_block_texture"] = "Details Serenity",
			["show_inc_bars"] = false,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["food_tier1"] = true,
			["mythic_1_4"] = true,
			["food_tier2"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
			["pre_pot_tanks"] = false,
			["food_tier3"] = true,
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["is_first_run"] = false,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				300.000061035156, -- [1]
				499.999938964844, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = true,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["font_size"] = 10,
			["main_frame_locked"] = false,
			["use_spark"] = true,
			["enabled"] = false,
			["arrow_size"] = 10,
			["arrow_anchor_y"] = 0,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["y"] = -1.525878906250e-005,
			["x"] = 3.05175781250e-005,
			["font_face"] = "Friz Quadrata TT",
			["per_second"] = {
				["enabled"] = false,
				["point"] = "TOPLEFT",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -219.333190917969,
				["x"] = 100.111038208008,
				["attribute_type"] = 1,
				["update_speed"] = 0.05,
				["size"] = 32,
			},
			["point"] = "CENTER",
			["main_frame_strata"] = "LOW",
			["row_height"] = 20,
			["scale"] = 1,
		},
		["DETAILS_PLUGIN_TIME_ATTACK"] = {
			["enabled"] = true,
			["realm_last_shown"] = 40,
			["saved_as_anonymous"] = true,
			["recently_as_anonymous"] = true,
			["dps"] = 0,
			["disable_sharing"] = false,
			["history"] = {
			},
			["time"] = 40,
			["history_lastindex"] = 0,
			["author"] = "Details! Team",
			["realm_history"] = {
			},
			["realm_lastamt"] = 0,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["force_font_outline"] = "",
	["character_data"] = {
		["logons"] = 2,
	},
	["tabela_instancias"] = {
	},
	["combat_id"] = 0,
	["savedStyles"] = {
		{
			["show_statusbar"] = true,
			["menu_icons_size"] = 1.05000007152557,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["menu_anchor"] = {
				16, -- [1]
				2, -- [2]
				["side"] = 2,
			},
			["bg_r"] = 0.0941176470588235,
			["hide_out_of_combat"] = false,
			["following"] = {
				["enabled"] = true,
				["bar_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["color_buttons"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["switch_healer"] = false,
			["skin_custom"] = "",
			["bars_inverted"] = false,
			["backdrop_texture"] = "Solid",
			["micro_displays_locked"] = false,
			["tooltip"] = {
				["n_abilities"] = 3,
				["n_enemies"] = 3,
			},
			["version"] = 3,
			["total_bar"] = {
				["enabled"] = false,
				["only_in_group"] = false,
				["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
				["color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["switch_all_roles_in_combat"] = false,
			["instance_button_anchor"] = {
				-27, -- [1]
				1, -- [2]
			},
			["name"] = "Drathal",
			["attribute_text"] = {
				["enabled"] = false,
				["shadow"] = true,
				["side"] = 1,
				["text_size"] = 10,
				["custom_text"] = "{name}",
				["text_face"] = "FrancoisOne",
				["anchor"] = {
					3, -- [1]
					4, -- [2]
				},
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["enable_custom_text"] = false,
				["show_timer"] = {
					false, -- [1]
					true, -- [2]
					true, -- [3]
				},
			},
			["statusbar_info"] = {
				["alpha"] = 1,
				["overlay"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["menu_alpha"] = {
				["enabled"] = false,
				["onenter"] = 1,
				["iconstoo"] = true,
				["ignorebars"] = false,
				["onleave"] = 1,
			},
			["window_scale"] = 1,
			["switch_all_roles_after_wipe"] = false,
			["desaturated_menu"] = false,
			["strata"] = "BACKGROUND",
			["libwindow"] = {
				["y"] = 14.1103935241699,
				["x"] = -0.8876953125,
				["point"] = "BOTTOMRIGHT",
			},
			["bars_grow_direction"] = 2,
			["ignore_mass_showhide"] = false,
			["hide_in_combat_alpha"] = 0,
			["plugins_grow_direction"] = 2,
			["menu_icons"] = {
				false, -- [1]
				true, -- [2]
				false, -- [3]
				false, -- [4]
				true, -- [5]
				false, -- [6]
				["space"] = -1,
				["shadow"] = true,
			},
			["switch_damager"] = false,
			["auto_hide_menu"] = {
				["left"] = true,
				["right"] = false,
			},
			["menu_anchor_down"] = {
				16, -- [1]
				-3, -- [2]
			},
			["row_show_animation"] = {
				["anim"] = "Fade",
				["options"] = {
				},
			},
			["switch_tank_in_combat"] = false,
			["skin"] = "Minimalistic",
			["switch_damager_in_combat"] = false,
			["grab_on_top"] = false,
			["switch_healer_in_combat"] = false,
			["hide_icon"] = false,
			["auto_current"] = true,
			["toolbar_side"] = 1,
			["bg_g"] = 0.0941176470588235,
			["show_sidebars"] = false,
			["hide_in_combat"] = false,
			["hide_in_combat_type"] = 5,
			["micro_displays_side"] = 2,
			["switch_tank"] = false,
			["wallpaper"] = {
				["enabled"] = false,
				["texture"] = "Interface\\TALENTFRAME\\bg-monk-mistweaver",
				["texcoord"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
					0.703125, -- [4]
				},
				["overlay"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["anchor"] = "all",
				["height"] = 114.042518615723,
				["alpha"] = 0.5,
				["width"] = 283.000183105469,
			},
			["stretch_button_side"] = 2,
			["bars_sort_direction"] = 2,
			["row_info"] = {
				["textR_outline"] = true,
				["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
				["textL_outline"] = true,
				["textR_outline_small"] = true,
				["textR_show_data"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["textL_enable_custom_text"] = false,
				["fixed_text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = 1,
				},
				["texture_background_class_color"] = false,
				["start_after_icon"] = true,
				["font_face_file"] = "Interface\\AddOns\\Kui_Media\\f\\francois.ttf",
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["font_size"] = 10,
				["height"] = 15,
				["texture_file"] = "Interface\\BUTTONS\\WHITE8X8",
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
				["models"] = {
					["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
					["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
					["upper_alpha"] = 0.5,
					["lower_enabled"] = false,
					["lower_alpha"] = 0.1,
					["upper_enabled"] = false,
				},
				["textR_bracket"] = "(",
				["use_spec_icons"] = true,
				["texture_custom"] = "",
				["textL_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["fixed_texture_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["textL_show_number"] = true,
				["backdrop"] = {
					["enabled"] = false,
					["size"] = 4,
					["color"] = {
						0.541176470588235, -- [1]
						0.541176470588235, -- [2]
						0.541176470588235, -- [3]
						1, -- [4]
					},
					["texture"] = "Details BarBorder 2",
				},
				["textL_outline_small"] = false,
				["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
				["texture"] = "Flat",
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["textR_enable_custom_text"] = false,
				["textR_class_colors"] = false,
				["textL_class_colors"] = false,
				["textR_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["texture_background"] = "Flat Dark",
				["alpha"] = 1,
				["no_icon"] = false,
				["texture_background_file"] = "Interface\\AddOns\\oUF_Abu\\Media\\Texture\\Raid-Bar-Hp-Fill",
				["fixed_texture_background_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.150000035762787, -- [4]
				},
				["font_face"] = "FrancoisOne",
				["texture_class_colors"] = true,
				["percent_type"] = 1,
				["fast_ps_update"] = false,
				["textR_separator"] = "|",
				["texture_custom_file"] = "Interface\\",
			},
			["bg_alpha"] = 0.0732309818267822,
			["bg_b"] = 0.0941176470588235,
		}, -- [1]
		{
			["show_statusbar"] = true,
			["backdrop_texture"] = "Solid",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["menu_anchor"] = {
				16, -- [1]
				2, -- [2]
				["side"] = 2,
			},
			["bg_r"] = 0.0941176470588235,
			["hide_out_of_combat"] = false,
			["following"] = {
				["bar_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["enabled"] = true,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["color_buttons"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["switch_healer"] = false,
			["skin_custom"] = "",
			["bars_inverted"] = false,
			["micro_displays_locked"] = false,
			["switch_tank_in_combat"] = false,
			["tooltip"] = {
				["n_abilities"] = 3,
				["n_enemies"] = 3,
			},
			["name"] = "Drathal",
			["total_bar"] = {
				["enabled"] = false,
				["only_in_group"] = false,
				["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
				["color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["switch_all_roles_in_combat"] = false,
			["instance_button_anchor"] = {
				-27, -- [1]
				1, -- [2]
			},
			["bg_alpha"] = 0.0732309818267822,
			["attribute_text"] = {
				["show_timer"] = {
					false, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["shadow"] = true,
				["side"] = 1,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["custom_text"] = "{name}",
				["text_face"] = "FrancoisOne",
				["anchor"] = {
					3, -- [1]
					4, -- [2]
				},
				["text_size"] = 10,
				["enable_custom_text"] = false,
				["enabled"] = false,
			},
			["skin"] = "Minimalistic",
			["menu_alpha"] = {
				["enabled"] = false,
				["onleave"] = 1,
				["ignorebars"] = false,
				["iconstoo"] = true,
				["onenter"] = 1,
			},
			["show_sidebars"] = false,
			["micro_displays_side"] = 2,
			["switch_damager"] = false,
			["strata"] = "BACKGROUND",
			["auto_hide_menu"] = {
				["left"] = true,
				["right"] = false,
			},
			["row_show_animation"] = {
				["anim"] = "Fade",
				["options"] = {
				},
			},
			["switch_tank"] = false,
			["hide_in_combat_alpha"] = 0,
			["switch_all_roles_after_wipe"] = false,
			["menu_icons"] = {
				false, -- [1]
				true, -- [2]
				false, -- [3]
				false, -- [4]
				true, -- [5]
				false, -- [6]
				["space"] = -1,
				["shadow"] = true,
			},
			["desaturated_menu"] = false,
			["statusbar_info"] = {
				["alpha"] = 1,
				["overlay"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["menu_anchor_down"] = {
				16, -- [1]
				-3, -- [2]
			},
			["window_scale"] = 1,
			["plugins_grow_direction"] = 2,
			["bars_sort_direction"] = 2,
			["hide_icon"] = false,
			["switch_damager_in_combat"] = false,
			["ignore_mass_showhide"] = false,
			["grab_on_top"] = false,
			["auto_current"] = true,
			["toolbar_side"] = 1,
			["bg_g"] = 0.0941176470588235,
			["bars_grow_direction"] = 2,
			["hide_in_combat"] = false,
			["libwindow"] = {
				["y"] = 14.1103935241699,
				["x"] = -228.443237304688,
				["point"] = "BOTTOMRIGHT",
			},
			["hide_in_combat_type"] = 5,
			["switch_healer_in_combat"] = false,
			["wallpaper"] = {
				["enabled"] = false,
				["texture"] = "Interface\\TALENTFRAME\\bg-monk-mistweaver",
				["texcoord"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
					0.703125, -- [4]
				},
				["overlay"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["anchor"] = "all",
				["height"] = 114.042518615723,
				["alpha"] = 0.5,
				["width"] = 283.000183105469,
			},
			["stretch_button_side"] = 2,
			["menu_icons_size"] = 1.05000007152557,
			["row_info"] = {
				["textR_outline"] = true,
				["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
				["textL_outline"] = true,
				["textR_outline_small"] = true,
				["textL_outline_small"] = false,
				["textL_enable_custom_text"] = false,
				["fixed_text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = 1,
				},
				["texture_background_class_color"] = false,
				["start_after_icon"] = true,
				["font_face_file"] = "Interface\\AddOns\\Kui_Media\\f\\francois.ttf",
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["font_size"] = 10,
				["texture_custom_file"] = "Interface\\",
				["texture_file"] = "Interface\\BUTTONS\\WHITE8X8",
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
				["models"] = {
					["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
					["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
					["upper_alpha"] = 0.5,
					["lower_enabled"] = false,
					["lower_alpha"] = 0.1,
					["upper_enabled"] = false,
				},
				["use_spec_icons"] = true,
				["textR_bracket"] = "(",
				["texture_custom"] = "",
				["textL_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["fixed_texture_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
				["textL_show_number"] = true,
				["textR_show_data"] = {
					true, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["textR_enable_custom_text"] = false,
				["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
				["texture"] = "Flat",
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["backdrop"] = {
					["enabled"] = false,
					["size"] = 4,
					["color"] = {
						0.541176470588235, -- [1]
						0.541176470588235, -- [2]
						0.541176470588235, -- [3]
						1, -- [4]
					},
					["texture"] = "Details BarBorder 2",
				},
				["textL_class_colors"] = false,
				["textR_class_colors"] = false,
				["textR_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["texture_background"] = "Flat Dark",
				["alpha"] = 1,
				["no_icon"] = false,
				["percent_type"] = 1,
				["texture_background_file"] = "Interface\\AddOns\\oUF_Abu\\Media\\Texture\\Raid-Bar-Hp-Fill",
				["font_face"] = "FrancoisOne",
				["texture_class_colors"] = true,
				["fixed_texture_background_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0.150000035762787, -- [4]
				},
				["fast_ps_update"] = false,
				["textR_separator"] = "|",
				["height"] = 15,
			},
			["version"] = 3,
			["bg_b"] = 0.0941176470588235,
		}, -- [2]
		{
			["show_statusbar"] = false,
			["menu_icons_size"] = 1.19324624538422,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["menu_anchor"] = {
				14, -- [1]
				8, -- [2]
				["side"] = 2,
			},
			["bg_r"] = 0,
			["skin"] = "Safe Skin Legion Beta",
			["following"] = {
				["bar_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["enabled"] = true,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["color_buttons"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["switch_healer"] = {
				2, -- [1]
				1, -- [2]
				9, -- [3]
			},
			["bars_sort_direction"] = 2,
			["bars_inverted"] = false,
			["switch_healer_in_combat"] = false,
			["switch_tank_in_combat"] = false,
			["tooltip"] = {
				["n_abilities"] = 3,
				["n_enemies"] = 3,
			},
			["bg_alpha"] = 0.400000035762787,
			["stretch_button_side"] = 1,
			["switch_all_roles_in_combat"] = false,
			["instance_button_anchor"] = {
				-27, -- [1]
				1, -- [2]
			},
			["version"] = 3,
			["attribute_text"] = {
				["show_timer"] = {
					false, -- [1]
					true, -- [2]
					true, -- [3]
				},
				["shadow"] = true,
				["side"] = 2,
				["text_size"] = 12,
				["custom_text"] = "{name}",
				["text_face"] = "KkthnxUI_Normal",
				["anchor"] = {
					2, -- [1]
					3, -- [2]
				},
				["enabled"] = false,
				["enable_custom_text"] = false,
				["text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
			},
			["auto_hide_menu"] = {
				["left"] = true,
				["right"] = false,
			},
			["menu_alpha"] = {
				["enabled"] = false,
				["onleave"] = 1,
				["ignorebars"] = false,
				["iconstoo"] = true,
				["onenter"] = 1,
			},
			["hide_in_combat_type"] = 5,
			["window_scale"] = 0.990000009536743,
			["switch_damager"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["strata"] = "BACKGROUND",
			["desaturated_menu"] = false,
			["row_show_animation"] = {
				["anim"] = "Fade",
				["options"] = {
				},
			},
			["switch_tank"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["hide_in_combat_alpha"] = 100,
			["switch_all_roles_after_wipe"] = false,
			["menu_icons"] = {
				false, -- [1]
				true, -- [2]
				false, -- [3]
				false, -- [4]
				true, -- [5]
				false, -- [6]
				["space"] = -1,
				["shadow"] = false,
			},
			["libwindow"] = {
				["y"] = 0,
				["x"] = 0.000121034565381706,
				["point"] = "BOTTOMRIGHT",
			},
			["micro_displays_side"] = 2,
			["menu_anchor_down"] = {
				16, -- [1]
				-3, -- [2]
			},
			["bars_grow_direction"] = 2,
			["plugins_grow_direction"] = 1,
			["skin_custom"] = "",
			["switch_damager_in_combat"] = false,
			["grab_on_top"] = true,
			["ignore_mass_showhide"] = false,
			["hide_icon"] = true,
			["auto_current"] = true,
			["toolbar_side"] = 1,
			["bg_g"] = 0,
			["statusbar_info"] = {
				["alpha"] = 0,
				["overlay"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["hide_in_combat"] = false,
			["backdrop_texture"] = "Solid",
			["show_sidebars"] = false,
			["hide_out_of_combat"] = false,
			["wallpaper"] = {
				["overlay"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["width"] = 283.000183105469,
				["texcoord"] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["enabled"] = false,
				["anchor"] = "all",
				["height"] = 114.042518615723,
				["alpha"] = 0.5,
				["texture"] = "Interface\\Glues\\CREDITS\\Arakkoa2",
			},
			["total_bar"] = {
				["enabled"] = false,
				["only_in_group"] = false,
				["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
				["color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["micro_displays_locked"] = false,
			["row_info"] = {
				["textR_outline"] = true,
				["spec_file"] = "Interface\\AddOns\\Details\\images\\spec_icons_normal",
				["textL_outline"] = true,
				["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
				["textL_outline_small"] = false,
				["percent_type"] = 1,
				["fixed_text_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["space"] = {
					["right"] = 0,
					["left"] = 0,
					["between"] = -1,
				},
				["texture_background_class_color"] = false,
				["start_after_icon"] = true,
				["font_face_file"] = "Interface\\AddOns\\KkthnxUI\\Media\\Fonts\\Normal.ttf",
				["backdrop"] = {
					["enabled"] = false,
					["texture"] = "Blizzard Tooltip",
					["color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["size"] = 1,
				},
				["font_size"] = 12,
				["texture_custom_file"] = "Interface\\",
				["texture_file"] = "Interface\\AddOns\\Details\\images\\bar_background",
				["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small",
				["height"] = 17,
				["models"] = {
					["upper_model"] = "Spells\\AcidBreath_SuperGreen.M2",
					["lower_model"] = "World\\EXPANSION02\\DOODADS\\Coldarra\\COLDARRALOCUS.m2",
					["upper_alpha"] = 0.450000017881393,
					["lower_enabled"] = false,
					["lower_alpha"] = 0.1,
					["upper_enabled"] = false,
				},
				["use_spec_icons"] = false,
				["texture_custom"] = "",
				["textL_custom_text"] = "{data1}. {data3}{data2}",
				["fixed_texture_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["textL_show_number"] = true,
				["textL_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["textR_enable_custom_text"] = false,
				["textR_custom_text"] = "{data1} ({data2}, {data3}%)",
				["fixed_texture_background_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					0, -- [4]
				},
				["textR_outline_small"] = true,
				["textL_enable_custom_text"] = false,
				["textR_show_data"] = {
					true, -- [1]
					true, -- [2]
					false, -- [3]
				},
				["texture_background"] = "DGround",
				["alpha"] = 1,
				["textR_class_colors"] = false,
				["textR_outline_small_color"] = {
					0, -- [1]
					0, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["no_icon"] = false,
				["textL_class_colors"] = false,
				["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar_background",
				["font_face"] = "KkthnxUI_Normal",
				["texture_class_colors"] = true,
				["texture"] = "DGround",
				["fast_ps_update"] = true,
				["textR_separator"] = "NONE",
				["textR_bracket"] = "(",
			},
			["name"] = "Drathal",
			["bg_b"] = 0,
		}, -- [3]
	},
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["cached_talents"] = {
		["Player-3696-05EE8BC1"] = {
			21644, -- [1]
			21750, -- [2]
			22095, -- [3]
			19767, -- [4]
			19752, -- [5]
			22315, -- [6]
			21754, -- [7]
		},
	},
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["last_instance_time"] = 0,
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["verticalSnap"] = false,
			["is_open"] = true,
			["isLocked"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				2, -- [1]
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -454.569955305594,
					["x"] = 846.615078300529,
					["w"] = 228.080810546875,
					["h"] = 172.585830688477,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [1]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = true,
			["snap"] = {
				[3] = 1,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -454.569955305594,
					["x"] = 620.815203399858,
					["w"] = 228.080810546875,
					["h"] = 172.585830688477,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [2]
	},
	["last_day"] = "29",
	["announce_cooldowns"] = {
		["ignored_cooldowns"] = {
		},
		["enabled"] = false,
		["custom"] = "",
		["channel"] = "RAID",
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1497362667,
		["last_version"] = 8,
	},
	["last_instance_id"] = 0,
	["cached_specs"] = {
		["Player-3696-05EE8BC1"] = 257,
	},
}
