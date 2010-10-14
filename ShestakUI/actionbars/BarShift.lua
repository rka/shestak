if not SettingsCF["actionbar"].enable == true then return end

----------------------------------------------------------------------------------------
--	Setup Shapeshift Bar by Tukz
----------------------------------------------------------------------------------------
local ShiftHolder = CreateFrame("Frame", "ShiftBar", UIParent)
if SettingsCF["actionbar"].shapeshift_horizontal == true then
	ShiftHolder:SetPoint(unpack(SettingsCF["position"].stance_bar))
	ShiftHolder:SetWidth((SettingsDB.buttonsize * 7) + (SettingsDB.buttonspacing * 6))
	ShiftHolder:SetHeight(SettingsDB.buttonsize)
else
	if (PetActionBarFrame:IsShown() or PetHolder) and SettingsCF["actionbar"].petbar_horizontal ~= true then
		ShiftHolder:SetPoint("RIGHT", "PetHolder", "LEFT", -SettingsDB.buttonspacing, (SettingsDB.buttonsize / 2) + 1)
	else
		ShiftHolder:SetPoint("RIGHT", "RightActionBarAnchor", "LEFT", -SettingsDB.buttonspacing, (SettingsDB.buttonsize / 2) + 1)
	end
	ShiftHolder:SetWidth(SettingsDB.buttonsize)
	ShiftHolder:SetHeight((SettingsDB.buttonsize * 7) + (SettingsDB.buttonspacing * 6))
end

ShapeshiftBarFrame:SetParent(ShiftHolder)
ShapeshiftBarFrame:SetWidth(0.00001)
for i = 1, 10 do
	local b = _G["ShapeshiftButton"..i]
	local b2 = _G["ShapeshiftButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		if SettingsCF["actionbar"].shapeshift_horizontal == true then
			b:SetPoint("BOTTOMLEFT", ShiftHolder, "BOTTOMLEFT", 0, 0)
		else
			b:SetPoint("TOPLEFT", ShiftHolder, "TOPLEFT", 0, 0)
		end
	else
		if SettingsCF["actionbar"].shapeshift_horizontal == true then
			b:SetPoint("LEFT", b2, "RIGHT", SettingsDB.buttonspacing, 0)
		else
			b:SetPoint("TOP", b2, "BOTTOM", 0, -SettingsDB.buttonspacing)
		end
	end
end

-- Hook setpoint
local function MoveShapeshift()
	if SettingsCF["actionbar"].shapeshift_horizontal == true then
		ShapeshiftButton1:ClearAllPoints()
		ShapeshiftButton1:SetPoint("BOTTOMLEFT", ShiftHolder, "BOTTOMLEFT", 0, 0)
	else
		ShapeshiftButton1:ClearAllPoints()
		ShapeshiftButton1:SetPoint("TOPLEFT", ShiftHolder, "TOPLEFT", 0, 0)
	end
end
hooksecurefunc("ShapeshiftBar_Update", MoveShapeshift)

-- Hide bar
if SettingsCF.actionbar.shapeshift_hide then
	ShiftHolder:Hide()
end

-- Mouseover bar
if SettingsCF.actionbar.shapeshift_mouseover == true then
	for i = 1, NUM_SHAPESHIFT_SLOTS do
		local b = _G["ShapeshiftButton"..i]
		b:SetAlpha(0)
		b:HookScript("OnEnter", function() ShapeShiftMouseOver(1) end)
		b:HookScript("OnLeave", function() ShapeShiftMouseOver(0) end)
	end
end