-- Save options --
function saveOptions()

    -- Fixes issue where french client was adding invalid data to array
    for key,value in pairs(options) do
        if (key ~= "xPos"
        and key ~= "yPos"
        and key ~= "venomBarHeight"
        and key ~= "venomBarGap"
        and key ~= "venomBarLenght"
        and key ~= "enableMovement"
        and key ~= "hideOutOfCombat"
        and key ~= "displayNumber"
        and key ~= "venomUpdateFrequency"
        and key ~= "venom_1_color"
        and key ~= "venom_2_color"
        and key ~= "venom_3_color"
        and key ~= "venom_4_color"
        and key ~= "venom_5_color") then
            options[key] = nil;
        end
    end

    options["venom_1_color"]["R"] = numberToStringMinMax(options["venom_1_color"]["R"], 0, 1);
    options["venom_1_color"]["G"] = numberToStringMinMax(options["venom_1_color"]["G"], 0, 1);
    options["venom_1_color"]["B"] = numberToStringMinMax(options["venom_1_color"]["B"], 0, 1);
    options["venom_2_color"]["R"] = numberToStringMinMax(options["venom_2_color"]["R"], 0, 1);
    options["venom_2_color"]["G"] = numberToStringMinMax(options["venom_2_color"]["G"], 0, 1);
    options["venom_2_color"]["B"] = numberToStringMinMax(options["venom_2_color"]["B"], 0, 1);
    options["venom_3_color"]["R"] = numberToStringMinMax(options["venom_3_color"]["R"], 0, 1);
    options["venom_3_color"]["G"] = numberToStringMinMax(options["venom_3_color"]["G"], 0, 1);
    options["venom_3_color"]["B"] = numberToStringMinMax(options["venom_3_color"]["B"], 0, 1);
    options["venom_4_color"]["R"] = numberToStringMinMax(options["venom_4_color"]["R"], 0, 1);
    options["venom_4_color"]["G"] = numberToStringMinMax(options["venom_4_color"]["G"], 0, 1);
    options["venom_4_color"]["B"] = numberToStringMinMax(options["venom_4_color"]["B"], 0, 1);
    options["venom_5_color"]["R"] = numberToStringMinMax(options["venom_5_color"]["R"], 0, 1);
    options["venom_5_color"]["G"] = numberToStringMinMax(options["venom_5_color"]["G"], 0, 1);
    options["venom_5_color"]["B"] = numberToStringMinMax(options["venom_5_color"]["B"], 0, 1);

    Turbine.PluginData.Save(Turbine.DataScope.Character, settingsFileName, options);
end


-- Turns strings to numbers between min and max value --
function numberToStringMinMax(value, min, max)
	if value == nil then return tostring(min); end
	if value < min then return tostring(min); end
	if value > max then return tostring(max); end
	return tostring(value):gsub(",", ".");
end



-- Load options --
function loadOptions()
    local _options = Turbine.PluginData.Load(Turbine.DataScope.Character, settingsFileName);
    if _options ~= nil then

        if (_options["xPos"] == nil) then
            _options["xPos"] = options["xPos"];
        end

        if (_options["yPos"] == nil) then
            _options["yPos"] = options["yPos"];
        end

        if (_options["enableMovement"] == nil) then
            _options["enableMovement"] = options["enableMovement"];
        end

        if (_options["venomBarHeight"] == nil) then
            _options["venomBarHeight"] = options["venomBarHeight"];
        end

        if (_options["venomBarGap"] == nil) then
            _options["venomBarGap"] = options["venomBarGap"];
        end

        if (_options["venomBarLenght"] == nil) then
            _options["venomBarLenght"] = options["venomBarLenght"];
        end

        if (_options["hideOutOfCombat"] == nil) then
            _options["hideOutOfCombat"] = options["hideOutOfCombat"];
        end

        if (_options["displayNumber"] == nil) then
            _options["displayNumber"] = options["displayNumber"];
        end

        if (_options["venomUpdateFrequency"] == nil) then
            _options["venomUpdateFrequency"] = options["venomUpdateFrequency"];
        end

        if (_options["venom_1_color"] == nil) then
            _options["venom_1_color"] = options["venom_1_color"];
        end

        if (_options["venom_2_color"] == nil) then
            _options["venom_2_color"] = options["venom_2_color"];
        end

        if (_options["venom_3_color"] == nil) then
            _options["venom_3_color"] = options["venom_3_color"];
        end

        if (_options["venom_4_color"] == nil) then
            _options["venom_4_color"] = options["venom_4_color"];
        end

        if (_options["venom_5_color"] == nil) then
            _options["venom_5_color"] = options["venom_5_color"];
        end

        options = _options;

        options["venom_1_color"] = toColor(options["venom_1_color"]["R"], options["venom_1_color"]["G"], options["venom_1_color"]["B"])
        options["venom_2_color"] = toColor(options["venom_2_color"]["R"], options["venom_2_color"]["G"], options["venom_2_color"]["B"])
        options["venom_3_color"] = toColor(options["venom_3_color"]["R"], options["venom_3_color"]["G"], options["venom_3_color"]["B"])
        options["venom_4_color"] = toColor(options["venom_4_color"]["R"], options["venom_4_color"]["G"], options["venom_4_color"]["B"])
        options["venom_5_color"] = toColor(options["venom_5_color"]["R"], options["venom_5_color"]["G"], options["venom_5_color"]["B"])
    end
end


-- Turns RGB values to turbine color objects --
function toColor(r, g, b)

	if (tonumber(r) == nil) or (tonumber(g) == nil) or (tonumber(b) == nil) then
		-- Try to fix numbers by chaning "." to "," --
		r = r:gsub("%.", ",");
		g = g:gsub("%.", ",");
		b = b:gsub("%.", ",");
	end

	return Turbine.UI.Color(tonumber(r), tonumber(g), tonumber(b));
end