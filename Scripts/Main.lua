VenomWindow = class (Turbine.UI.Window)

function VenomWindow:Constructor()
	Turbine.UI.Window.Constructor(self)

	self:SetSize(options["venomBarLenght"] * 5 + options["venomBarGap"] * 4, options["venomBarHeight"] + 20)
	self:SetPosition(options["xPos"], options["yPos"])
    self:SetWantsKeyEvents(true);
	self:SetVisible(true)
	if (options["hideOutOfCombat"]) then
        self:SetOpacity(0)
    else
        self:SetOpacity(1)
    end

    -- Hide the UI with F12 --
    self.KeyDown = function( sender, args)
        if (args.Action == 268435635) then
            self:SetVisible(not self:IsVisible());
        end
    end


	self.Venom_label = Turbine.UI.Label()
	self.Venom_label:SetParent(self)
    self.Venom_label:SetSize(options["venomBarHeight"] + 50, options["venomBarHeight"] + 20)
	self.Venom_label:SetPosition((self:GetWidth() / 2) - (self.Venom_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Venom_label:GetHeight() / 2))
    self.Venom_label:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter)
    self.Venom_label:SetVisible(options["displayNumber"])
	self.Venom_label:SetFont(Turbine.UI.Lotro.Font.TrajanProBold30)
    self.Venom_label:SetText("0")
    self.Venom_label:SetZOrder(2)
    self.Venom_label:SetForeColor(Turbine.UI.Color.White)
    self.Venom_label:SetOutlineColor(Turbine.UI.Color.Black)
    self.Venom_label:SetFontStyle(Turbine.UI.FontStyle.Outline);
	self.Venom_label:SetWantsUpdates(true);
	self.Venom_label.current_venom = 0;
	self.Venom_label.delay = tonumber(options["venomUpdateFrequency"]);

	-- Track venom --
	self.Venom_label.Update = function()

		self.Venom_label.delay = self.Venom_label.delay + 1;

		if (self.Venom_label.delay > tonumber(options["venomUpdateFrequency"])) then
			self.Venom_label.delay = 0;

			local _venom_found = false;

			for i = 1, player:GetEffects():GetCount(), 1 do

				if string.gsub(player:GetEffects():Get(i):GetName(), "%d", "") == "Venom " or string.gsub(player:GetEffects():Get(i):GetName(), "%d", "") == "Gift " or string.gsub(player:GetEffects():Get(i):GetName(), "%d", "") == "Venin " then

					local _current_venom = string.gsub(player:GetEffects():Get(i):GetName(), "%D", "");
					_venom_found = true;

					if (_current_venom ~= self.Venom_label.current_venom) then
						self.Venom_label.current_venom = _current_venom;
						self.Venom_label:SetText(_current_venom)
						self:UpdateVenomBars();
					end

					break;
				end
			end

			if (_venom_found == false) then
				if (self.Venom_label.current_venom ~= 0) then
					self.Venom_label.current_venom = 0;
					self.Venom_label:SetText("0")
					self:UpdateVenomBars();
				end
			end
		end
	end


	self.Venom_1_parent = Turbine.UI.Control()
	self.Venom_1_parent:SetParent(self)
	self.Venom_1_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Venom_1_parent:GetHeight() / 2))
	self.Venom_1_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_1_parent:SetVisible(true)
    self.Venom_1_child = Turbine.UI.Control()
	self.Venom_1_child:SetParent(self.Venom_1_parent)
	self.Venom_1_child:SetPosition(1, 1)
	self.Venom_1_child:SetSize(self.Venom_1_parent:GetWidth() - 2, self.Venom_1_parent:GetHeight() - 2)
	self.Venom_1_child:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_1_child:SetVisible(true)


    self.Venom_2_parent = Turbine.UI.Control()
	self.Venom_2_parent:SetParent(self)
	self.Venom_2_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_2_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]), (self:GetHeight() / 2) - (self.Venom_2_parent:GetHeight() / 2))
	self.Venom_2_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_2_parent:SetVisible(true)
    self.Venom_2_child = Turbine.UI.Control()
	self.Venom_2_child:SetParent(self.Venom_2_parent)
	self.Venom_2_child:SetPosition(1, 1)
	self.Venom_2_child:SetSize(self.Venom_2_parent:GetWidth() - 2, self.Venom_2_parent:GetHeight() - 2)
	self.Venom_2_child:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_2_child:SetVisible(true)


    self.Venom_3_parent = Turbine.UI.Control()
	self.Venom_3_parent:SetParent(self)
	self.Venom_3_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_3_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 2, (self:GetHeight() / 2) - (self.Venom_3_parent:GetHeight() / 2))
	self.Venom_3_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_3_parent:SetVisible(true)
    self.Venom_3_child = Turbine.UI.Control()
	self.Venom_3_child:SetParent(self.Venom_3_parent)
	self.Venom_3_child:SetPosition(1, 1)
	self.Venom_3_child:SetSize(self.Venom_3_parent:GetWidth() - 2, self.Venom_3_parent:GetHeight() - 2)
	self.Venom_3_child:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_3_child:SetVisible(true)


    self.Venom_4_parent = Turbine.UI.Control()
	self.Venom_4_parent:SetParent(self)
	self.Venom_4_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_4_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 3, (self:GetHeight() / 2) - (self.Venom_4_parent:GetHeight() / 2))
	self.Venom_4_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_4_parent:SetVisible(true)
    self.Venom_4_child = Turbine.UI.Control()
	self.Venom_4_child:SetParent(self.Venom_4_parent)
	self.Venom_4_child:SetPosition(1, 1)
	self.Venom_4_child:SetSize(self.Venom_4_parent:GetWidth() - 2, self.Venom_4_parent:GetHeight() - 2)
	self.Venom_4_child:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_4_child:SetVisible(true)


    self.Venom_5_parent = Turbine.UI.Control()
	self.Venom_5_parent:SetParent(self)
	self.Venom_5_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_5_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 4, (self:GetHeight() / 2) - (self.Venom_5_parent:GetHeight() / 2))
	self.Venom_5_parent:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_5_parent:SetVisible(true)
    self.Venom_5_child = Turbine.UI.Control()
	self.Venom_5_child:SetParent(self.Venom_5_parent)
	self.Venom_5_child:SetPosition(1, 1)
	self.Venom_5_child:SetSize(self.Venom_5_parent:GetWidth() - 2, self.Venom_5_parent:GetHeight() - 2)
	self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
    self.Venom_5_child:SetVisible(true)



    self.localPlayer = Turbine.Gameplay.LocalPlayer.GetInstance();
    self.localPlayer.InCombatChanged = function(sender, args)
        if (options["hideOutOfCombat"]) then
            self:SetWantsUpdates(true);
        end
    end
    self.localPlayer.InCombatChanged();

    self.Update = function()
        if (self.localPlayer:IsInCombat()) then
            self:SetOpacity(self:GetOpacity() + 0.02);
            if (self:GetOpacity() >= 1.0) then
                self:SetWantsUpdates(false);
            end
        else
            self:SetOpacity(self:GetOpacity() - 0.02);
            if (self:GetOpacity() <= 0) then
                self:SetWantsUpdates(false);
            end
        end
    end


	function VenomWindow:UpdateVenomBars()
		if (self.Venom_label.current_venom == "5") then
			self.Venom_1_child:SetBackColor(options["venom_5_color"])
			self.Venom_2_child:SetBackColor(options["venom_5_color"])
			self.Venom_3_child:SetBackColor(options["venom_5_color"])
			self.Venom_4_child:SetBackColor(options["venom_5_color"])
			self.Venom_5_child:SetBackColor(options["venom_5_color"])
		elseif (self.Venom_label.current_venom == "4") then
			self.Venom_1_child:SetBackColor(options["venom_4_color"])
			self.Venom_2_child:SetBackColor(options["venom_4_color"])
			self.Venom_3_child:SetBackColor(options["venom_4_color"])
			self.Venom_4_child:SetBackColor(options["venom_4_color"])
			self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (self.Venom_label.current_venom == "3") then
			self.Venom_1_child:SetBackColor(options["venom_3_color"])
			self.Venom_2_child:SetBackColor(options["venom_3_color"])
			self.Venom_3_child:SetBackColor(options["venom_3_color"])
			self.Venom_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (self.Venom_label.current_venom == "2") then
			self.Venom_1_child:SetBackColor(options["venom_2_color"])
			self.Venom_2_child:SetBackColor(options["venom_2_color"])
			self.Venom_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
		elseif (self.Venom_label.current_venom == "1") then
			self.Venom_1_child:SetBackColor(options["venom_1_color"])
			self.Venom_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
		else
			self.Venom_1_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_2_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_3_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_4_child:SetBackColor(Turbine.UI.Color.Black)
			self.Venom_5_child:SetBackColor(Turbine.UI.Color.Black)
		end
	end


    -- Window Movement --
	self.moveControl = Turbine.UI.Control()
	self.moveControl:SetParent(self)
	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
	self.moveControl:SetMouseVisible(options["enableMovement"])
	self.moveControl:SetZOrder(3)
	self.moveControl.MouseDown = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = true
			self.dragStartX = args.X
			self.dragStartY = args.Y
		end
	end

	self.moveControl.MouseMove = function( sender, args )
		if self.dragging then
			local x,y = self:GetPosition()
			x = x + ( args.X - self.dragStartX )
			y = y + ( args.Y - self.dragStartY )
			self:SetPosition( x, y )
		end
	end

	self.moveControl.MouseUp = function( sender, args )
		if args.Button == Turbine.UI.MouseButton.Left then
			self.dragging = false
            options["xPos"] = self:GetLeft()
			options["yPos"] = self:GetTop()
		end
	end
end


-- Update elements after options have been modified --
function VenomWindow:UpdateElements()

	self:SetSize(options["venomBarLenght"] * 5 + options["venomBarGap"] * 4, options["venomBarHeight"] + 20)

    self.Venom_label:SetSize(options["venomBarHeight"] + 50, options["venomBarHeight"] + 20)
	self.Venom_label:SetPosition((self:GetWidth() / 2) - (self.Venom_label:GetWidth() / 2), (self:GetHeight() / 2) - (self.Venom_label:GetHeight() / 2))

	self.Venom_1_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_1_parent:SetPosition(0, (self:GetHeight() / 2) - (self.Venom_1_parent:GetHeight() / 2))
	self.Venom_1_child:SetSize(self.Venom_1_parent:GetWidth() - 2, self.Venom_1_parent:GetHeight() - 2)

	self.Venom_2_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_2_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]), (self:GetHeight() / 2) - (self.Venom_2_parent:GetHeight() / 2))
	self.Venom_2_child:SetSize(self.Venom_2_parent:GetWidth() - 2, self.Venom_2_parent:GetHeight() - 2)

	self.Venom_3_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_3_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 2, (self:GetHeight() / 2) - (self.Venom_3_parent:GetHeight() / 2))
	self.Venom_3_child:SetSize(self.Venom_3_parent:GetWidth() - 2, self.Venom_3_parent:GetHeight() - 2)

	self.Venom_4_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_4_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 3, (self:GetHeight() / 2) - (self.Venom_4_parent:GetHeight() / 2))
	self.Venom_4_child:SetSize(self.Venom_4_parent:GetWidth() - 2, self.Venom_4_parent:GetHeight() - 2)

	self.Venom_5_parent:SetSize(options["venomBarLenght"], options["venomBarHeight"])
    self.Venom_5_parent:SetPosition((options["venomBarLenght"] + options["venomBarGap"]) * 4, (self:GetHeight() / 2) - (self.Venom_5_parent:GetHeight() / 2))
	self.Venom_5_child:SetSize(self.Venom_5_parent:GetWidth() - 2, self.Venom_5_parent:GetHeight() - 2)

	self.moveControl:SetWidth(self:GetWidth())
	self.moveControl:SetHeight(self:GetHeight())
end


VenomWindowClass = VenomWindow();