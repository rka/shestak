if not SettingsCF["actionbar"].enable == true then return end

----------------------------------------------------------------------------------------
--	Setup MultiBarLeft as bar #3 by Tukz
----------------------------------------------------------------------------------------
local Bar3Holder = CreateFrame("Frame", "Bar3Holder", UIParent)
Bar3Holder:SetAllPoints(ActionBarAnchor)
MultiBarLeft:SetParent(Bar3Holder)

for i = 1, 12 do
	local b = _G["MultiBarLeftButton"..i]
	local b2 = _G["MultiBarLeftButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		if SettingsCF.actionbar.rightbars == 3 then
			b:SetPoint("TOP", RightActionBarAnchor, "TOP", 0, 0)
		else
			b:SetPoint("TOPLEFT", RightActionBarAnchor, "TOPLEFT", 0, 0)
		end
	else
		b:SetPoint("TOP", b2, "BOTTOM", 0, -SettingsDB.buttonspacing)
	end
end

-- Hide it if needed
if SettingsCF.actionbar.rightbars < 2 then
	Bar3Holder:Hide()
end