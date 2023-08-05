-- Import Turbine/Lotro base libraries --
import "Turbine";
import "Turbine.Gameplay";
import "Turbine.UI.Lotro";


-- Import utility scripts --
import "WeaverVenomDisplay.Scripts.Utility.Class";
import "WeaverVenomDisplay.Scripts.Utility.Type";
import "WeaverVenomDisplay.Scripts.Utility.RadioButton";


-- Import scripts that are required for other scripts to work --
import "WeaverVenomDisplay.Scripts.Notification";
import "WeaverVenomDisplay.Scripts.SaveLoad";
import "WeaverVenomDisplay.Scripts.Init";


-- Make sure plugin loads only for weavers --
if (Turbine.Gameplay.LocalPlayer.GetInstance():GetClass() ~= Turbine.Gameplay.Class.Weaver) then
    Scripts.notification("This plugin will only work for weavers! Wrong class detected, therefore the plugin has been disabled.");
    return;
end


-- Import plugin activation --
import "WeaverVenomDisplay.Scripts.Activation";


-- Import color picker --
import "WeaverVenomDisplay.Scripts.ColorPicker";


-- Import main functionality --
import "WeaverVenomDisplay.Scripts.Main";
import "WeaverVenomDisplay.Scripts.Options";