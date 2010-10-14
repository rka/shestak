Filger_Settings = {
	configmode = false,
}

Filger_Spells = {
	["DRUID"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

			-- Lifebloom
			{ spellID = 33763, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rejuvenation
			{ spellID = 774, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Regrowth
			{ spellID = 8936, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Savage roar
			{ spellID = 52610, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate
			{ spellID = 29166, size = 37, unitId = "player", caster = "all", filter = "BUFF" },
			-- Barkskin
			{ spellID = 22812, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Bloodlust
			{ spellID = 2825, size = 37, unitId = "player", caster = "all", filter = "BUFF" },
			-- Heroism
			{ spellID = 32182, size = 37, unitId = "player", caster = "all", filter = "BUFF" },
			-- Survival Instincts
			{ spellID = 61336, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hyperspeed Accelerators
			{ spellID = 54999, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

			-- Moonfire
			{ spellID = 8921, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Insect Swarm
			{ spellID = 5570, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Faerie Fire
			{ spellID = 770, size = 37, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots
			{ spellID = 339, size = 37, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Earth and Moon
			{ spellID = 48506, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rake
			{ spellID = 1822, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rip
			{ spellID = 1079, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Lacerate
			{ spellID = 33745, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pounce Bleed
			{ spellID = 9007, size = 37, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mangle (Cat)
			{ spellID = 33876, size = 37, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Mangle (Bear)
			{ spellID = 33878, size = 37, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

			-- Eclipse (Lunar)
			{ spellID = 48518, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eclipse (Solar)
			{ spellID = 48517, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shooting Stars
			{ spellID = 93400, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16870, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Siphoned Power
			{ spellID = 71636, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hyperspeed Accelerators
			{ spellID = 54999, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cultivated Power
			{ spellID = 71572, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hardened Skin
			{ spellID = 71586, size = 37, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "BOTTOMRIGHT", 9, -41 },
			
			-- Lifebloom
			{ spellID = 33763, size = 25, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
			-- Rejuvenation
			{ spellID = 774, size = 25, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
			-- Regrowth
			{ spellID = 8936, size = 25, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
			-- Wild Growth
			{ spellID = 48438, size = 25, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
			-- Demoralizing Roar
			{ spellID = 99, size = 25, barWidth = 187, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
			-- Entangling Roots
			{ spellID = 339, size = 25, barWidth = 192, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Cyclone
			{ spellID = 33786, size = 25, barWidth = 192, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Hibernate
			{ spellID = 2637, size = 25, barWidth = 192, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
			-- Wild Growth
			{ spellID = 48438, size = 30, filter = "CD" },
			-- Swiftmend
			{ spellID = 18562, size = 30, filter = "CD" },
			-- Barkskin
			{ spellID = 22812, size = 30, filter = "CD" },
			-- Mangle(Bear)
			{ spellID = 33878, size = 30, filter = "CD" },
			-- Nature's Grasp
			{ spellID = 16689, size = 30, filter = "CD" },
			-- Starfall
			{ spellID = 48505, size = 30, filter = "CD" },
			-- Growl
			{ spellID = 6795, size = 30, filter = "CD" },
			-- Enrage
			{ spellID = 5229, size = 30, filter = "CD" },
			-- Faerie Fire(Feral)
			{ spellID = 16857, size = 30, filter = "CD" },
			-- Feral Charge - Bear
			{ spellID = 16979, size = 30, filter = "CD" },
			-- Feral Charge - Cat
			{ spellID = 49376, size = 30, filter = "CD" },
			-- Bash
			{ spellID = 5211, size = 30, filter = "CD" },
			-- Maim
			{ spellID = 22570, size = 30, filter = "CD" },
			-- Cower
			{ spellID = 8998, size = 30, filter = "CD" },
		},
	},
	--[[["HUNTER"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },
			
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },
			
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },
			
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["MAGE"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },
			
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },

		},
	},
	["WARRIOR"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["SHAMAN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "BOTTOMRIGHT", 9, -41 },
			
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["PALADIN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["PRIEST"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "BOTTOMRIGHT", 9, -41 },
			
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["WARLOCK"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },

		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "BOTTOMRIGHT", 9, -41 },
			
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["ROGUE"] = {	
		{	
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },
			
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 173 },
			
		},
		{
			Name = "PVE/PVP_CC",
			Direction = "DOWN",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "TOPLEFT", "oUF_Player", "BOTTOMLEFT", -2, -44 },
			
		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },
			
		},
	},
	["DEATHKNIGHT"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 173 },

		},
		{
			Name = "T_DE/BUFF_BAR",
			Direction = "UP",
			Interval = 3,
			Mode = "BAR",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "BOTTOMRIGHT", 9, -41 },
			
		},
		{
			Name = "P_PROC_ICON",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 213 },

		},
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 63, SettingsCF["unitframe"].plugins_swing == true and 29 or 17 },

		},
	},
	["ALL"] = {
		{
			Name = "PVE/PVP_DEBUFF",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMRIGHT", "oUF_Player", "TOPRIGHT", 2, 253 },

		},
		{
			Name = "T_BUFF",
			Direction = "UP",
			Interval = 3,
			Mode = "ICON",
			setPoint = { "BOTTOMLEFT", "oUF_Target", "TOPLEFT", -2, 253 },
			
		},
	},]]
}