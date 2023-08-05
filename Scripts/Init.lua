-- Plugin's name --
pluginName = "WeaverVenomDisplay";

-- File names --
settingsFileName = "WeaverVenomDisplay_Settings";

-- Users screen size --
screenWidth, screenHeight = Turbine.UI.Display:GetSize();

-- Get local player reference --
player = Turbine.Gameplay.LocalPlayer.GetInstance();

-- Default options --
defaultOptions = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    venomBarLenght = 30,
    venomBarHeight = 10,
    venomBarGap = 3,
    hideOutOfCombat = false,
    venomUpdateFrequency = 10,
    venom_1_color = Turbine.UI.Color(0.996, 0.533, 0),
    venom_2_color = Turbine.UI.Color(0.996, 0.533, 0),
    venom_3_color = Turbine.UI.Color(1, 0.333, 0.012),
    venom_4_color = Turbine.UI.Color(1, 0.333, 0.012),
    venom_5_color = Turbine.UI.Color(0.808, 0.039, 0.094),
}

options = {
    xPos = screenWidth / 2,
    yPos = screenHeight / 2,
    enableMovement = true,
    displayNumber = true,
    venomBarLenght = 30,
    venomBarHeight = 10,
    venomBarGap = 3,
    hideOutOfCombat = false,
    venomUpdateFrequency = 10,
    venom_1_color = Turbine.UI.Color(0.996, 0.533, 0),
    venom_2_color = Turbine.UI.Color(0.996, 0.533, 0),
    venom_3_color = Turbine.UI.Color(1, 0.333, 0.012),
    venom_4_color = Turbine.UI.Color(1, 0.333, 0.012),
    venom_5_color = Turbine.UI.Color(0.808, 0.039, 0.094),
}

-- Color Picker position --
colorPickerLastPositionX = nil;
colorPickerLastPositionY = nil;

-- RGB color codes --
rgb = {
    pluginName = "<rgb=#DAA520>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>",
};