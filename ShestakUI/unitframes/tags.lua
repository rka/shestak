if not SettingsCF.unitframe.enable == true then return end

oUF.TagEvents["Threat"] = "UNIT_THREAT_LIST_UPDATE"
oUF.Tags["Threat"] = function(unit)
	local tanking, status, percent = UnitDetailedThreatSituation("player", "target")
	if percent and percent > 0 then
		return ("%s%d%%|r"):format(Hex(GetThreatStatusColor(status)), percent)
	end
end

oUF.TagEvents["DiffColor"] = "UNIT_LEVEL"
oUF.Tags["DiffColor"]  = function(unit)
	local r, g, b
	local level = UnitLevel(unit)
	if (level < 1) then
		r, g, b = 0.69, 0.31, 0.31
	else
		local DiffColor = UnitLevel("target") - UnitLevel("player")
		if (DiffColor >= 5) then
			r, g, b = 0.69, 0.31, 0.31
		elseif (DiffColor >= 3) then
			r, g, b = 0.71, 0.43, 0.27
		elseif (DiffColor >= -2) then
			r, g, b = 0.84, 0.75, 0.65
		elseif (-DiffColor <= GetQuestGreenRange()) then
			r, g, b = 0.33, 0.59, 0.33
		else
			r, g, b = 0.55, 0.57, 0.61
		end
	end
	return string.format("|cff%02x%02x%02x", r * 255, g * 255, b * 255)
end

oUF.TagEvents["GetNameColor"] = "UNIT_HAPPINESS"
oUF.Tags["GetNameColor"] = function(unit)
	local reaction = UnitReaction(unit, "player")
	if unit == "pet" and GetPetHappiness() then
		local c = SettingsDB.oUF_colors.happiness[GetPetHappiness()]
		return string.format("|cff%02x%02x%02x", c[1] * 255, c[2] * 255, c[3] * 255)
	elseif UnitIsPlayer(unit) then
		return _TAGS["raidcolor"](unit)
	elseif reaction then
		local c = SettingsDB.oUF_colors.reaction[reaction]
		return string.format("|cff%02x%02x%02x", c[1] * 255, c[2] * 255, c[3] * 255)
	else
		r, g, b = 0.84, 0.75, 0.65
		return string.format("|cff%02x%02x%02x", r * 255, g * 255, b * 255)
	end
end

oUF.TagEvents["NameArena"] = "UNIT_NAME_UPDATE"
oUF.Tags["NameArena"] = function(unit)
	local name = UnitName(unit)
	return SettingsDB.UTF(name, 4, false)
end

oUF.TagEvents["NameShort"] = "UNIT_NAME_UPDATE"
oUF.Tags["NameShort"] = function(unit)
	local name = UnitName(unit)
	return SettingsDB.UTF(name, 8, false)
end

oUF.TagEvents["NameMedium"] = "UNIT_NAME_UPDATE"
oUF.Tags["NameMedium"] = function(unit)
	local name = UnitName(unit)
	return SettingsDB.UTF(name, 11, true)
end

oUF.TagEvents["NameLong"] = "UNIT_NAME_UPDATE"
oUF.Tags["NameLong"] = function(unit)
	local name = UnitName(unit)
	return SettingsDB.UTF(name, 18, true)
end