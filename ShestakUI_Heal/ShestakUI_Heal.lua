if not SettingsCF["unitframe"].enable == true then return end

local db = SettingsCF["unitframe"]
local pos = SettingsCF["position"].unitframes
local floor, format, insert, sort = math.floor, string.format, table.insert, table.sort

local function Shared(self, unit)
	-- Set our own colors
	self.colors = SettingsDB.oUF_colors
	
	-- Register click
	self:RegisterForClicks("LeftButtonDown", "RightButtonDown")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)
	
	local unit = (unit and unit:find("partypet%d")) and "partypet" or unit
	
	-- Menu
	self.menu = SettingsDB.SpawnMenu
	
	-- Backdrop for every units
	self.FrameBackdrop = CreateFrame("Frame", nil, self)
	SettingsDB.CreateTemplate(self.FrameBackdrop)
	self.FrameBackdrop:SetFrameStrata("BACKGROUND")
	self.FrameBackdrop:SetPoint("TOPLEFT", SettingsDB.Scale(-2), SettingsDB.Scale(2))
	self.FrameBackdrop:SetPoint("BOTTOMRIGHT", SettingsDB.Scale(2), SettingsDB.Scale(-2))
	
	-- Health bar
	self.Health = CreateFrame("StatusBar", nil, self)
	self.Health:SetPoint("TOPLEFT")
	self.Health:SetPoint("TOPRIGHT")
	if (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") and not (self:GetParent():GetName():match"oUF_MainTank") then
		self.Health:SetHeight(SettingsDB.Scale(14))
	else
		self.Health:SetHeight(SettingsDB.Scale(23))
	end
	self.Health:SetStatusBarTexture(SettingsCF["media"].texture)
	
	if db.vertical_health == true then
		self.Health:SetOrientation("VERTICAL")
	end
	
	self.Health.frequentUpdates = true
	self.Health.colorTapping = true
	self.Health.colorDisconnected = true
	self.Health.colorClassPet = false
	if db.own_color == true then
		self.Health.colorReaction = false
		self.Health.colorClass = false
		self.Health:SetStatusBarColor(unpack(SettingsCF["media"].uf_color))
	else
		self.Health.colorReaction = true
		self.Health.colorClass = true
	end
	
	-- Health bar background
	self.Health.bg = self.Health:CreateTexture(nil, "BORDER")
	self.Health.bg:SetAllPoints(self.Health)
	self.Health.bg:SetTexture(SettingsCF["media"].texture)
	if db.own_color == true then
		self.Health.bg:SetVertexColor(0.1, 0.1, 0.1)	
	else
		self.Health.bg.multiplier = 0.25
	end
	
	if not (self:GetAttribute("unitsuffix") == "pet" or (self:GetAttribute("unitsuffix") == "target" and not (self:GetParent():GetName():match"oUF_MainTank"))) then
		self.Health.value = self.Health:CreateFontString(nil, "OVERLAY")
		self.Health.value:SetPoint("CENTER", self.Health, "CENTER", 0, SettingsDB.Scale(-5))
		self.Health.value:SetFont(SettingsCF["media"].pixel_font, db.font_size, SettingsCF["media"].pixel_font_style)
		self.Health.value:SetTextColor(1, 1, 1)
		self.Health.value:SetShadowOffset(0, 0)
		
		self.Health.PostUpdate = SettingsDB.PostUpdateRaidHealth

		-- Power bar
		self.Power = CreateFrame("StatusBar", nil, self)
		self.Power:SetHeight(2)
		self.Power:SetPoint("TOPLEFT", self.Health, "BOTTOMLEFT", 0, -SettingsDB.mult)
		self.Power:SetPoint("TOPRIGHT", self.Health, "BOTTOMRIGHT", 0, -SettingsDB.mult)
		self.Power:SetStatusBarTexture(SettingsCF["media"].texture)

		self.Power.frequentUpdates = true
		self.Power.colorDisconnected = true
		if db.own_color == true then
			self.Power.colorClass = true
		else
			self.Power.colorPower = true
		end

		-- Power bar background
		self.Power.bg = self.Power:CreateTexture(nil, "BORDER")
		self.Power.bg:SetAllPoints(self.Power)
		self.Power.bg:SetTexture(SettingsCF["media"].texture)
		self.Power.bg:SetAlpha(1)
		self.Power.bg.multiplier = 0.3
	end
	
	-- Names
	self.Info = self.Health:CreateFontString(nil, "OVERLAY")
	if (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") and not (self:GetParent():GetName():match"oUF_MainTank") then
		self.Info:SetPoint("CENTER", self.Health, "CENTER", 0, SettingsDB.Scale(1))
	else
		self.Info:SetPoint("CENTER", self.Health, "CENTER", 0, SettingsDB.Scale(4))
	end
	self.Info:SetFont(SettingsCF["media"].pixel_font, db.font_size, SettingsCF["media"].pixel_font_style)
	self:Tag(self.Info, "[GetNameColor][NameShort]")
	
	-- Agro border
    if db.aggro_border == true then
		table.insert(self.__elements, SettingsDB.UpdateThreat)
		self:RegisterEvent("PLAYER_TARGET_CHANGED", SettingsDB.UpdateThreat)
		self:RegisterEvent("UNIT_THREAT_LIST_UPDATE", SettingsDB.UpdateThreat)
		self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", SettingsDB.UpdateThreat)
	end
	
	-- Raid marks
	if db.icons_raid_mark == true then
		self.RaidIcon = self.Health:CreateTexture(nil, "OVERLAY")
		self.RaidIcon:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.RaidIcon:SetPoint("BOTTOMLEFT", SettingsDB.Scale(-2), SettingsDB.Scale(-5))
	end
	
	-- LFD role icons
	if db.icons_lfd_role == true and not (self:GetAttribute("unitsuffix") == "target") then 
		self.LFDRole = self.Health:CreateTexture(nil, "OVERLAY")
		self.LFDRole:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.LFDRole:SetPoint("TOP", 0, SettingsDB.Scale(8))
	end
	
	-- Ready check icons
	if db.icons_ready_check == true and not (self:GetAttribute("unitsuffix") == "target") then
		--[[self.ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
		self.ReadyCheck:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.ReadyCheck:SetPoint("BOTTOMRIGHT", SettingsDB.Scale(2), SettingsDB.Scale(1))]]
	end
	
	self.PhaseIcon = self.Health:CreateTexture(nil, "OVERLAY")
	self.PhaseIcon:SetSize(SettingsDB.Scale(16), SettingsDB.Scale(16))
	self.PhaseIcon:SetPoint("BOTTOM", self.Health, "BOTTOM", 0, SettingsDB.Scale(-2))
	self.PhaseIcon.Override = SettingsDB.Phasing
	
	-- Leader/Assistant/ML icons
	if db.icons_leader == true and not (self:GetAttribute("unitsuffix") == "target") then
		-- Leader icon
		self.Leader = self.Health:CreateTexture(nil, "OVERLAY")
		self.Leader:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.Leader:SetPoint("TOPLEFT", SettingsDB.Scale(-3), SettingsDB.Scale(8))
	
		-- Assistant icon
		self.Assistant = self.Health:CreateTexture(nil, "OVERLAY")
		self.Assistant:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.Assistant:SetPoint("TOPLEFT", SettingsDB.Scale(-3), SettingsDB.Scale(8))
		
		-- Master looter icon
		self.MasterLooter = self.Health:CreateTexture(nil, "OVERLAY")
		self.MasterLooter:SetSize(SettingsDB.Scale(12), SettingsDB.Scale(12))
		self.MasterLooter:SetPoint("TOPRIGHT", SettingsDB.Scale(3), SettingsDB.Scale(8))
	end
	
	-- Debuff highlight
	if not (self:GetAttribute("unitsuffix") == "target") then
		self.DebuffHighlight = self.Health:CreateTexture(nil, "OVERLAY")
		self.DebuffHighlight:SetAllPoints(self.Health)
		--self.DebuffHighlight:SetTexture(SettingsCF["media"].texture)
		self.DebuffHighlight:SetTexture(SettingsCF["media"].highlight)
		self.DebuffHighlight:SetVertexColor(0, 0, 0, 0)
		--self.DebuffHighlight:SetBlendMode("DISABLE")
		self.DebuffHighlight:SetBlendMode("ADD")
		self.DebuffHighlightAlpha = 1
		self.DebuffHighlightFilter = true
	end
	
	-- Incoming heal text/bar
	if db.plugins_healcomm == true then
		local mhpb = CreateFrame("StatusBar", nil, self.Health)
		if db.vertical_health == true then
			mhpb:SetOrientation("VERTICAL")
			mhpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
			mhpb:SetWidth(SettingsDB.Scale(60))
			mhpb:SetHeight(SettingsDB.Scale(26))		
		else
			mhpb:SetPoint("TOPLEFT", self.Health:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
			mhpb:SetPoint("BOTTOMLEFT", self.Health:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
			mhpb:SetWidth(SettingsDB.Scale(60))
		end				
		mhpb:SetStatusBarTexture(SettingsCF["media"].texture)
		mhpb:SetStatusBarColor(0, 1, 0.5, 0.25)

		local ohpb = CreateFrame("StatusBar", nil, self.Health)
		ohpb:SetPoint("TOPLEFT", mhpb:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
		ohpb:SetPoint("BOTTOMLEFT", mhpb:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
		ohpb:SetWidth(SettingsDB.Scale(60))
		ohpb:SetStatusBarTexture(SettingsCF["media"].texture)
		ohpb:SetStatusBarColor(0, 1, 0, 0.25)

		self.HealPrediction = {
			myBar = mhpb,
			otherBar = ohpb,
			maxOverflow = 1,
		}
	end
	
	-- Support oUF_ResComm
	if IsAddOnLoaded("oUF_ResComm") then
		--self.ResComm = self.Health:CreateTexture(nil, "OVERLAY")
		--self.ResComm:SetTexture([[Interface\Icons\Spell_Holy_Resurrection]])
		--self.ResComm:SetAllPoints(self.Health)
		--self.ResComm:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		--self.ResComm:SetBlendMode("ADD")
		--self.ResComm:SetAlpha(0.25)
		--self.ResComm.OthersOnly = true
	end

	-- Range alpha
	if db.show_range == true and not (self:GetAttribute("unitsuffix") == "target") then
		self.Range = {insideAlpha = 1, outsideAlpha = db.range_alpha}
	end
	
	-- Smooth bars
	if db.plugins_smooth_bar == true then
		self.Health.Smooth = true
		if not (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") then
			self.Power.Smooth = true
		end
	end

	if db.plugins_aura_watch == true and not (self:GetAttribute("unitsuffix") == "pet" or self:GetAttribute("unitsuffix") == "target") then
		-- Classbuffs
		SettingsDB.CreateAuraWatch(self, unit)
		
		-- Raid debuffs
		self.RaidDebuffs = CreateFrame("Frame", nil, self)
		self.RaidDebuffs:SetHeight(SettingsDB.Scale(19))
		self.RaidDebuffs:SetWidth(SettingsDB.Scale(19))
		self.RaidDebuffs:SetPoint("CENTER", self, 0, SettingsDB.Scale(1))
		self.RaidDebuffs:SetFrameStrata("HIGH")
		SettingsDB.CreateTemplate(self.RaidDebuffs)

		self.RaidDebuffs.icon = self.RaidDebuffs:CreateTexture(nil, "OVERLAY")
		self.RaidDebuffs.icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		self.RaidDebuffs.icon:SetPoint("TOPLEFT", SettingsDB.Scale(2), SettingsDB.Scale(-2))
		self.RaidDebuffs.icon:SetPoint("BOTTOMRIGHT", SettingsDB.Scale(-2), SettingsDB.Scale(2))
		
		if db.aura_show_spiral == true then
			self.RaidDebuffs.cd = CreateFrame("Cooldown", nil, self.RaidDebuffs)
			self.RaidDebuffs.cd:SetPoint("TOPLEFT", SettingsDB.Scale(2), SettingsDB.Scale(-2))
			self.RaidDebuffs.cd:SetPoint("BOTTOMRIGHT", SettingsDB.Scale(-2), SettingsDB.Scale(2))
			self.RaidDebuffs.cd:SetReverse()
		end

		self.RaidDebuffs.count = self.RaidDebuffs:CreateFontString(nil, "OVERLAY")
		self.RaidDebuffs.count:SetFont(SettingsCF["media"].pixel_font, db.font_size, SettingsCF["media"].pixel_font_style)
		self.RaidDebuffs.count:SetPoint("BOTTOMRIGHT", self.RaidDebuffs, "BOTTOMRIGHT", SettingsDB.Scale(2), 0)
		self.RaidDebuffs.count:SetTextColor(1, 1, 1)
	end
	
	return self
end

----------------------------------------------------------------------------------------
--	Default position of ShestakUI unitframes
----------------------------------------------------------------------------------------
oUF:RegisterStyle("ShestakHeal", Shared)
oUF:Factory(function(self)
	oUF:SetActiveStyle("ShestakHeal")
	local party = self:SpawnHeader("oUF_Party", nil, "custom [@raid6,exists] hide;show",
		"oUF-initialConfigFunction", [[
			local header = self:GetParent()
			self:SetAttribute("*type1", "target")
			self:SetWidth(header:GetAttribute("initial-width"))
			self:SetHeight(header:GetAttribute("initial-height"))
			self:SetAttribute("toggleForVehicle", true)
			RegisterUnitWatch(self)
		]],
		"initial-width", 60.2,
		"initial-height", SettingsDB.Scale(26),
		"showSolo", db.solo_mode,
		"showPlayer", db.player_in_party, 
		"showParty", true,
		"showRaid", true,			
		"xOffset", 7,
		"point", "LEFT"
	)
	if db.player_in_party == true then
		party:SetPoint(pos.party_heal[1], pos.party_heal[2], pos.party_heal[3], pos.party_heal[4], pos.party_heal[5])
	else
		party:SetPoint(pos.party_heal[1], pos.party_heal[2], pos.party_heal[3], pos.party_heal[4] + 32, pos.party_heal[5])
	end
	
	local pets = {} 
	pets[1] = self:Spawn("partypet1", "oUF_PartyPet1") 
	pets[1]:SetPoint("TOPLEFT", party, "BOTTOMLEFT", 0, -28)
	pets[1]:SetSize(60.2, SettingsDB.Scale(14))
	for i = 2, 4 do 
		pets[i] = oUF:Spawn("partypet"..i, "oUF_PartyPet"..i) 
		pets[i]:SetPoint("LEFT", pets[i-1], "RIGHT", SettingsDB.Scale(7), 0)
		pets[i]:SetSize(60.2, SettingsDB.Scale(14))
	end

	if db.show_raid == true then
		local raid = self:SpawnHeader("oUF_RaidHeal", nil, "custom [@raid6,exists] show;hide",
			"oUF-initialConfigFunction", [[
				local header = self:GetParent()
				self:SetAttribute("*type1", "target")
				self:SetWidth(header:GetAttribute("initial-width"))
				self:SetHeight(header:GetAttribute("initial-height"))
				self:SetAttribute("toggleForVehicle", true)
				RegisterUnitWatch(self)
			]],
			"initial-width", 60.2,
			"initial-height", SettingsDB.Scale(26),
			"showRaid", true,
			"xoffset", SettingsDB.Scale(7),
			"yOffset", SettingsDB.Scale(-5),
			"point", "LEFT",
			"groupFilter", db.raid_groups,
			"groupingOrder", db.raid_groups,
			"groupBy", "GROUP",
			"maxColumns", 8,
			"unitsPerColumn", 5,
			"columnSpacing", SettingsDB.Scale(7),
			"columnAnchorPoint", "TOP"		
		)
		raid:SetPoint(unpack(SettingsCF["position"].unitframes.raid_heal))
		
		if db.raid_tanks == true then
			local raidtank = self:SpawnHeader("oUF_MainTank", nil, "raid",
				"oUF-initialConfigFunction", [[
					local header = self:GetParent()
					self:SetAttribute("*type1", "target")
					self:SetWidth(header:GetAttribute("initial-width"))
					self:SetHeight(header:GetAttribute("initial-height"))
					self:SetAttribute("toggleForVehicle", true)
					RegisterUnitWatch(self)
				]],
				"initial-width", 60.2,
				"initial-height", SettingsDB.Scale(26),
				"showRaid", true,
				"yOffset", -7,
				"groupFilter", "MAINTANK"
				--"template", "oUF_MainTank"
			)
			raidtank:SetPoint(unpack(SettingsCF["position"].unitframes.tank))
		end
	end
	
	local ShowPet = CreateFrame("Frame")
	ShowPet:RegisterEvent("PLAYER_ENTERING_WORLD")
	ShowPet:RegisterEvent("RAID_ROSTER_UPDATE")
	ShowPet:RegisterEvent("PARTY_LEADER_CHANGED")
	ShowPet:RegisterEvent("PARTY_MEMBERS_CHANGED")
	ShowPet:SetScript("OnEvent", function(self)
		if InCombatLockdown() then
			self:RegisterEvent("PLAYER_REGEN_ENABLED")
		else
			self:UnregisterEvent("PLAYER_REGEN_ENABLED")
			local numraid = GetNumRaidMembers()
			local numparty = GetNumPartyMembers()
			if numparty > 0 and numraid == 0 or numraid > 0 and numraid <= 5 then
				for i,v in ipairs(pets) do v:Enable() end
			else
				for i,v in ipairs(pets) do v:Disable() end
			end
		end
	end)
end)