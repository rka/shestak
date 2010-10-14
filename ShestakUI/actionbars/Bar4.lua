if not SettingsCF["actionbar"].enable == true then return end

----------------------------------------------------------------------------------------
--	Setup MultiBarRight as bar #4 by Tukz
----------------------------------------------------------------------------------------
local Bar4Holder = CreateFrame("Frame", "Bar4Holder", UIParent)
Bar4Holder:SetAllPoints(ActionBarAnchor)
MultiBarRight:SetParent(Bar4Holder)

for i = 1, 12 do
	local b = _G["MultiBarRightButton"..i]
	local b2 = _G["MultiBarRightButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		b:SetPoint("TOPRIGHT", RightActionBarAnchor, "TOPRIGHT", 0, 0)
	else
		b:SetPoint("TOP", b2, "BOTTOM", 0, -SettingsDB.buttonspacing)
	end	
end

-- Hide it if needed
if SettingsCF.actionbar.rightbars < 1 then
	Bar4Holder:Hide()
end