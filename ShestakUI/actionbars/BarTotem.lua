if not SettingsCF["actionbar"].enable == true and SettingsDB.class ~= "SHAMAN" then return end

----------------------------------------------------------------------------------------
--	Setup Totem Bar by Tukz
----------------------------------------------------------------------------------------
if MultiCastActionBarFrame then
	MultiCastActionBarFrame:SetScript("OnUpdate", nil)
	MultiCastActionBarFrame:SetScript("OnShow", nil)
	MultiCastActionBarFrame:SetScript("OnHide", nil)
	MultiCastActionBarFrame:SetParent(ShiftHolder)
	MultiCastActionBarFrame:ClearAllPoints()
	MultiCastActionBarFrame:SetPoint("BOTTOMLEFT", "ShiftBar", "BOTTOMLEFT", 0, 0)
 
	for i = 1, 4 do
		local b = _G["MultiCastSlotButton"..i]
		local b2 = _G["MultiCastActionButton"..i]
 
		b:ClearAllPoints()
		b:SetAllPoints(b2)
	end
 
	MultiCastActionBarFrame.SetParent = SettingsDB.dummy
	MultiCastActionBarFrame.SetPoint = SettingsDB.dummy
	MultiCastRecallSpellButton.SetPoint = SettingsDB.dummy
end

-- Hide it if needed
