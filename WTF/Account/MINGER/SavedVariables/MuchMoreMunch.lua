
MMMunchDB = {
	["profileKeys"] = {
		["Drathal - Madmortem"] = "Drathal - Madmortem",
		["Dronthal - Madmortem"] = "Dronthal - Madmortem",
		["Drahmoon - Madmortem"] = "Drahmoon - Madmortem",
		["Drathia - Madmortem"] = "Drathia - Madmortem",
	},
	["profiles"] = {
		["Drathal - Madmortem"] = {
			["macroTable"] = {
				["mAllHP"] = "#showtooltip\n/use [mod,@player] <b>; [nocombat] <hpf>\n/castsequence [nomod,combat] reset=combat <hps,hpp>",
				["mHP"] = "#showtooltip\n/castsequence [nocombat] reset=120 <hps,hpp,hpp>\n/castsequence [combat] reset=combat <hps,hpp>",
				["mFood"] = "#showtooltip\n/use <hpf>",
				["mBandage"] = "#showtooltip\n/use [@player] <b>",
				["mWater"] = "#showtooltip\n/use <mpf>",
				["mAllMP"] = "#showtooltip\n/use [nomod,nocombat] <mpf>\n/castsequence [nomod,combat] reset=combat <mps,mpp>",
				["mMP"] = "#showtooltip\n/use <mpp>",
			},
		},
		["Dronthal - Madmortem"] = {
			["macroTable"] = {
				["mAllHP"] = "#showtooltip\n/use [mod,@player] <b>; [nocombat] <hpf>\n/castsequence [nomod,combat] reset=combat <hps,hpp>",
				["mHP"] = "#showtooltip\n/castsequence [nocombat] reset=120 <hps,hpp,hpp>\n/castsequence [combat] reset=combat <hps,hpp>",
				["mFood"] = "#showtooltip\n/use <hpf>",
				["mWater"] = "#showtooltip\n/use <mpf>",
				["mMP"] = "#showtooltip\n/use <mpp>",
				["mAllMP"] = "#showtooltip\n/use [nomod,nocombat] <mpf>\n/castsequence [nomod,combat] reset=combat <mps,mpp>",
				["mBandage"] = "#showtooltip\n/use [@player] <b>",
			},
		},
		["Drahmoon - Madmortem"] = {
			["maintainWellFed"] = true,
			["buffPriority"] = {
				"Intellect", -- [1]
				"Mastery", -- [2]
			},
			["macroTable"] = {
				["mAllHP"] = "#showtooltip\n/use [mod,@player] <b>; [nocombat] <hpf>\n/castsequence [nomod,combat] reset=combat <hps,hpp>",
				["mHP"] = "#showtooltip\n/castsequence [nocombat] reset=120 <hps,hpp,hpp>\n/castsequence [combat] reset=combat <hps,hpp>",
				["mFood"] = "#showtooltip\n/use <hpf>",
				["mBandage"] = "#showtooltip\n/use [@player] <b>",
				["mWater"] = "#showtooltip\n/use <mpf>",
				["mAllMP"] = "#showtooltip\n/use [nomod,nocombat] <mpf>\n/castsequence [nomod,combat] reset=combat <mps,mpp>",
				["mMP"] = "#showtooltip\n/use <mpp>",
			},
		},
		["Drathia - Madmortem"] = {
			["macroTable"] = {
				["mAllHP"] = "#showtooltip\n/use [mod,@player] <b>; [nocombat] <hpf>\n/castsequence [nomod,combat] reset=combat <hps,hpp>",
				["mHP"] = "#showtooltip\n/castsequence [nocombat] reset=120 <hps,hpp,hpp>\n/castsequence [combat] reset=combat <hps,hpp>",
				["mFood"] = "#showtooltip\n/use <hpf>",
				["mBandage"] = "#showtooltip\n/use [@player] <b>",
				["mMP"] = "#showtooltip\n/use <mpp>",
				["mAllMP"] = "#showtooltip\n/use [nomod,nocombat] <mpf>\n/castsequence [nomod,combat] reset=combat <mps,mpp>",
				["mWater"] = "#showtooltip\n/use <mpf>",
			},
		},
	},
}
