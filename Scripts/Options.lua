plugin.GetOptionsPanel = function(self)

	-- Create Options Panel --
	optionsPanel = Turbine.UI.Control();
	optionsPanel:SetSize(500, 1170);


	-- Options title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Settings");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(0, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("WeaverVenomDisplay/Images/optionsTitleBackground.tga"));


	-- Allow movement--
	option_allowMovement_label = Turbine.UI.Label();
	option_allowMovement_label:SetParent(optionsPanel);
	option_allowMovement_label:SetSize(300, 30);
	option_allowMovement_label:SetPosition(110, 70);
	option_allowMovement_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_allowMovement_label:SetText("Allow movement");
	option_allowMovement_label:SetForeColor(Turbine.UI.Color.White);
	option_allowMovement_checkbox = Turbine.UI.Lotro.CheckBox();
	option_allowMovement_checkbox:SetParent(optionsPanel);
	option_allowMovement_checkbox:SetSize(20, 20);
	option_allowMovement_checkbox:SetPosition(80, 69);
	option_allowMovement_checkbox:SetChecked(options["enableMovement"]);


	-- Display number --
	option_displayNumber_label = Turbine.UI.Label();
	option_displayNumber_label:SetParent(optionsPanel);
	option_displayNumber_label:SetSize(300, 30);
	option_displayNumber_label:SetPosition(110, 95);
	option_displayNumber_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_displayNumber_label:SetText("Display Number");
	option_displayNumber_label:SetForeColor(Turbine.UI.Color.White);
	option_displayNumber_checkbox = Turbine.UI.Lotro.CheckBox();
	option_displayNumber_checkbox:SetParent(optionsPanel);
	option_displayNumber_checkbox:SetSize(20, 20);
	option_displayNumber_checkbox:SetPosition(80, 94);
	option_displayNumber_checkbox:SetChecked(options["displayNumber"]);


	-- Hide out of combat --
	option_hideOutOfCombat_label = Turbine.UI.Label();
	option_hideOutOfCombat_label:SetParent(optionsPanel);
	option_hideOutOfCombat_label:SetSize(300, 30);
	option_hideOutOfCombat_label:SetPosition(110, 120);
	option_hideOutOfCombat_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_hideOutOfCombat_label:SetText("Hide when out of combat");
	option_hideOutOfCombat_label:SetForeColor(Turbine.UI.Color.White);
	option_hideOutOfCombat_checkbox = Turbine.UI.Lotro.CheckBox();
	option_hideOutOfCombat_checkbox:SetParent(optionsPanel);
	option_hideOutOfCombat_checkbox:SetSize(20, 20);
	option_hideOutOfCombat_checkbox:SetPosition(80, 119);
	option_hideOutOfCombat_checkbox:SetChecked(options["hideOutOfCombat"]);


	-- VenomBarLenght --
	option_venomBarLenght_label = Turbine.UI.Label();
	option_venomBarLenght_label:SetParent(optionsPanel);
	option_venomBarLenght_label:SetSize(300, 30);
	option_venomBarLenght_label:SetPosition(80, 150);
	option_venomBarLenght_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarLenght_label:SetText("Bar Lenght");
	option_venomBarLenght_label:SetForeColor(Turbine.UI.Color.White);
	option_venomBarLenght_textbox = Turbine.UI.Lotro.TextBox();
	option_venomBarLenght_textbox:SetParent(optionsPanel);
	option_venomBarLenght_textbox:SetMultiline(false);
	option_venomBarLenght_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarLenght_textbox:SetText(options["venomBarLenght"]);
	option_venomBarLenght_textbox:SetSize(100, 20);
	option_venomBarLenght_textbox:SetPosition(80, 170);
	option_venomBarLenght_textbox:SetZOrder(100);
	option_venomBarLenght_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_venomBarLenght_textbox:SetText(option_venomBarLenght_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- VenomBarHeight --
	option_venomBarHeight_label = Turbine.UI.Label();
	option_venomBarHeight_label:SetParent(optionsPanel);
	option_venomBarHeight_label:SetSize(300, 30);
	option_venomBarHeight_label:SetPosition(80, 200);
	option_venomBarHeight_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarHeight_label:SetText("Bar Height");
	option_venomBarHeight_label:SetForeColor(Turbine.UI.Color.White);
	option_venomBarHeight_textbox = Turbine.UI.Lotro.TextBox();
	option_venomBarHeight_textbox:SetParent(optionsPanel);
	option_venomBarHeight_textbox:SetMultiline(false);
	option_venomBarHeight_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarHeight_textbox:SetText(options["venomBarHeight"]);
	option_venomBarHeight_textbox:SetSize(100, 20);
	option_venomBarHeight_textbox:SetPosition(80, 220);
	option_venomBarHeight_textbox:SetZOrder(100);
	option_venomBarHeight_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_venomBarHeight_textbox:SetText(option_venomBarHeight_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- VenomBarGap --
	option_venomBarGap_label = Turbine.UI.Label();
	option_venomBarGap_label:SetParent(optionsPanel);
	option_venomBarGap_label:SetSize(300, 30);
	option_venomBarGap_label:SetPosition(80, 250);
	option_venomBarGap_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarGap_label:SetText("Bar Gap");
	option_venomBarGap_label:SetForeColor(Turbine.UI.Color.White);
	option_venomBarGap_textbox = Turbine.UI.Lotro.TextBox();
	option_venomBarGap_textbox:SetParent(optionsPanel);
	option_venomBarGap_textbox:SetMultiline(false);
	option_venomBarGap_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomBarGap_textbox:SetText(options["venomBarGap"]);
	option_venomBarGap_textbox:SetSize(100, 20);
	option_venomBarGap_textbox:SetPosition(80, 270);
	option_venomBarGap_textbox:SetZOrder(100);
	option_venomBarGap_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_venomBarGap_textbox:SetText(option_venomBarGap_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- Venom update frequency --
	option_venomUpdateFrequency_label = Turbine.UI.Label();
	option_venomUpdateFrequency_label:SetParent(optionsPanel);
	option_venomUpdateFrequency_label:SetSize(300, 30);
	option_venomUpdateFrequency_label:SetPosition(80, 320);
	option_venomUpdateFrequency_label:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomUpdateFrequency_label:SetText("Check venom every X frames");
	option_venomUpdateFrequency_label:SetForeColor(Turbine.UI.Color.White);
	option_venomUpdateFrequency_help_label = Turbine.UI.Label();
	option_venomUpdateFrequency_help_label:SetParent(optionsPanel);
	option_venomUpdateFrequency_help_label:SetSize(250, 30);
	option_venomUpdateFrequency_help_label:SetPosition(80, 365);
	option_venomUpdateFrequency_help_label:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	option_venomUpdateFrequency_help_label:SetText("Smaller values are more accurate, but can also cause more lag");
	option_venomUpdateFrequency_help_label:SetForeColor(Turbine.UI.Color.Gray);
	option_venomUpdateFrequency_textbox = Turbine.UI.Lotro.TextBox();
	option_venomUpdateFrequency_textbox:SetParent(optionsPanel);
	option_venomUpdateFrequency_textbox:SetMultiline(false);
	option_venomUpdateFrequency_textbox:SetFont(Turbine.UI.Lotro.Font.Verdana16);
	option_venomUpdateFrequency_textbox:SetText(options["venomUpdateFrequency"]);
	option_venomUpdateFrequency_textbox:SetSize(100, 20);
	option_venomUpdateFrequency_textbox:SetPosition(80, 340);
	option_venomUpdateFrequency_textbox:SetZOrder(100);
	option_venomUpdateFrequency_textbox.TextChanged = function (sender, args)
		-- Only allow numbers in textbox --
		option_venomBarGap_textbox:SetText(option_venomBarGap_textbox:GetText():gsub("[^0123456789]", ""));
	end


	-- Color customization --
	customizationTitle = Turbine.UI.Label();
	customizationTitle:SetParent(optionsPanel);
	customizationTitle:SetText("Color Customization");
	customizationTitle:SetSize(400, 30);
	customizationTitle:SetPosition(0, 420);
	customizationTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	customizationTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	customizationTitle:SetForeColor(Turbine.UI.Color.Yellow);
	customizationTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	customizationTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	customizationTitle:SetBackground(Turbine.UI.Graphic("WeaverVenomDisplay/Images/optionsTitleBackground.tga"));

	color_customization1 = createCustomizationOption(optionsPanel, 80, 480, "Color for 1 venom", "venom_1_color");
	color_customization2 = createCustomizationOption(optionsPanel, 80, 540, "Color for 2 venom", "venom_2_color");
	color_customization3 = createCustomizationOption(optionsPanel, 80, 600, "Color for 3 venom", "venom_3_color");
	color_customization4 = createCustomizationOption(optionsPanel, 80, 660, "Color for 4 venom", "venom_4_color");
	color_customization5 = createCustomizationOption(optionsPanel, 80, 720, "Color for 5 venom", "venom_5_color");


	-- Troubleshooting title --
	optionsPanelTitle = Turbine.UI.Label();
	optionsPanelTitle:SetParent(optionsPanel);
	optionsPanelTitle:SetText("Troubleshooting");
	optionsPanelTitle:SetSize(400, 30);
	optionsPanelTitle:SetPosition(300, 25);
	optionsPanelTitle:SetFont(Turbine.UI.Lotro.Font.TrajanPro18);
	optionsPanelTitle:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	optionsPanelTitle:SetForeColor(Turbine.UI.Color.Yellow);
	optionsPanelTitle:SetFontStyle(Turbine.UI.FontStyle.Outline);
	optionsPanelTitle:SetBlendMode(Turbine.UI.BlendMode.AlphaBlend);
	optionsPanelTitle:SetBackground(Turbine.UI.Graphic("WeaverVenomDisplay/Images/optionsTitleBackground.tga"));


	-- Reset position button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset Position");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 80);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		VenomWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		notification("Position has been resetted.");
	end


	-- Reset settings button --
	resetPositionButton = Turbine.UI.Lotro.Button();
	resetPositionButton:SetText("Reset All Settings");
	resetPositionButton:SetParent(optionsPanel);
	resetPositionButton:SetSize(150, 20);
	resetPositionButton:SetPosition(428, 120);
	resetPositionButton:SetZOrder(100);
	resetPositionButton.Click = function( sender, args)
		options["xPos"] = defaultOptions["xPos"];
		options["yPos"] = defaultOptions["yPos"];
		options["enableMovement"] = defaultOptions["enableMovement"];
		options["displayNumber"] = defaultOptions["displayNumber"];
		options["venomBarLenght"] = defaultOptions["venomBarLenght"];
		options["venomBarHeight"] = defaultOptions["venomBarHeight"];
		options["venomBarGap"] = defaultOptions["venomBarGap"];
		options["hideOutOfCombat"] = defaultOptions["hideOutOfCombat"];

		VenomWindowClass:SetPosition(defaultOptions["xPos"], defaultOptions["yPos"])
		option_allowMovement_checkbox:SetChecked(defaultOptions["enableMovement"])
		VenomWindowClass.moveControl:SetMouseVisible(defaultOptions["enableMovement"])
		option_hideOutOfCombat_checkbox:SetChecked(defaultOptions["hideOutOfCombat"]);
		VenomWindowClass:SetOpacity(1)
		VenomWindowClass:SetWantsUpdates(defaultOptions["hideOutOfCombat"])
		option_displayNumber_checkbox:SetChecked(defaultOptions["displayNumber"]);
		VenomWindowClass.Venom_label:SetVisible(defaultOptions["displayNumber"])
		option_venomBarLenght_textbox:SetText(defaultOptions["venomBarLenght"])
		option_venomBarHeight_textbox:SetText(defaultOptions["venomBarHeight"])
		option_venomBarGap_textbox:SetText(defaultOptions["venomBarGap"])

		VenomWindowClass:UpdateElements();
		notification("All Settings has been resetted.");
	end


	-- Apply options button --
	apllyButton = Turbine.UI.Lotro.Button();
	apllyButton:SetText("Apply");
	apllyButton:SetParent(optionsPanel);
	apllyButton:SetSize(150, 20);
	apllyButton:SetPosition(80, 820);
	apllyButton:SetZOrder(100);
	apllyButton.Click = function( sender, args)

		options["enableMovement"] = option_allowMovement_checkbox:IsChecked();
		VenomWindowClass.moveControl:SetMouseVisible(options["enableMovement"])

		options["hideOutOfCombat"] = option_hideOutOfCombat_checkbox:IsChecked();
		if (options["hideOutOfCombat"]) then
			VenomWindowClass.localPlayer.InCombatChanged();
		else
			VenomWindowClass:SetWantsUpdates(false)
			VenomWindowClass:SetOpacity(1)
		end

		options["displayNumber"] = option_displayNumber_checkbox:IsChecked();
		VenomWindowClass.Venom_label:SetVisible(options["displayNumber"])

		if (option_venomBarLenght_textbox:GetText() == "") then
			option_venomBarLenght_textbox:SetText("0")
		end

		if (option_venomBarHeight_textbox:GetText() == "") then
			option_venomBarHeight_textbox:SetText("0")
		end

		if (option_venomBarGap_textbox:GetText() == "") then
			option_venomBarGap_textbox:SetText("0")
		end

		if (option_venomUpdateFrequency_textbox:GetText() == "") then
			option_venomUpdateFrequency_textbox:SetText("0")
		end

		options["venomBarLenght"] = option_venomBarLenght_textbox:GetText();
		options["venomBarHeight"] = option_venomBarHeight_textbox:GetText();
		options["venomBarGap"] = option_venomBarGap_textbox:GetText();
		options["venomUpdateFrequency"] = option_venomUpdateFrequency_textbox:GetText();

		options["venom_1_color"] = color_customization1["colorReview"]:GetBackColor();
		options["venom_2_color"] = color_customization2["colorReview"]:GetBackColor();
		options["venom_3_color"] = color_customization3["colorReview"]:GetBackColor();
		options["venom_4_color"] = color_customization4["colorReview"]:GetBackColor();
		options["venom_5_color"] = color_customization5["colorReview"]:GetBackColor();

		VenomWindowClass.Venom_label.delay = options["venomUpdateFrequency"];
		VenomWindowClass:UpdateElements();
		notification("Options have been applied.");
	end


	-- Return View --
	return optionsPanel;
end





-- Build layout for customization options --
function createCustomizationOption(parent, xPos, yPos, text, keyValue)

	local label = Turbine.UI.Label();
	label:SetParent(parent);
	label:SetFont(Turbine.UI.Lotro.Font.TrajanPro15);
	label:SetText(text);
	label:SetSize(240, 30);
	label:SetPosition(xPos, yPos);


	local colorReview = Turbine.UI.Control()
	colorReview:SetParent(parent)
	colorReview:SetSize(80, 20)
    colorReview:SetPosition(xPos, yPos + 20)
	colorReview:SetBackColor(options[keyValue])
    colorReview:SetVisible(true)


	local editButton = Turbine.UI.Lotro.Button();
	editButton:SetText("Edit");
	editButton:SetParent(parent);
	editButton:SetSize(75, 30);
	editButton:SetPosition(xPos + 100, yPos + 20);
	editButton.Click = function( sender, args)
		if colorPicker ~= nil then
			colorPickerLastPositionX, colorPickerLastPositionY = colorPicker:GetPosition();
			colorPicker:Close();
		end

		colorPicker = WeaverVenomDisplay.Utility.ColorPicker(colorReview:GetBackColor(), "H");
		colorPicker:SetZOrder(9999);

		if (colorPickerLastPositionX ~= nil) then
			colorPicker:SetPosition(colorPickerLastPositionX, colorPickerLastPositionY);
		end

		colorPicker.ColorChanged = function(picker)
			colorReview:SetBackColor(picker:GetColor());
		end

		colorPicker.Accepted = function(picker)
			colorReview:SetBackColor(picker:GetColor());
			colorPicker:Close();
		end
	end


	local revertButton = Turbine.UI.Lotro.Button();
	revertButton:SetText("Revert");
	revertButton:SetParent(parent);
	revertButton:SetSize(75, 30);
	revertButton:SetPosition(xPos + 180, yPos + 20);
	revertButton.Click = function( sender, args)
		-- Revert color back to what it was when plugin was loaded --
		colorReview:SetBackColor(options[keyValue]);
	end


	local defaultButton = Turbine.UI.Lotro.Button();
	defaultButton:SetText("Default");
	defaultButton:SetParent(parent);
	defaultButton:SetSize(75, 30);
	defaultButton:SetPosition(xPos + 260, yPos + 20);
	defaultButton.Click = function( sender, args)
		-- Reset color to default settings --
		colorReview:SetBackColor(defaultOptions[keyValue]);
	end


	-- Return created objects --
	data = {}
	data["label"] = label;
	data["colorReview"] = colorReview;
	data["editButton"] = editButton;
	data["revertButton"] = revertButton;
	data["defaultButton"] = defaultButton;
	return data;
end