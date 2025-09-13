-- get help at https://discord.gg/rB4x9dKgbU

local Key = "key_thisscriptissooverpowered" -- enter your key here
local KeyLink = "https://lootdest.org/s?nDyv5I2J" -- enter the link to get your key here

local function ScriptHere() -- you will need to put your script on line 5, it can not surpass the end at the bottom

	loadstring(game:HttpGet("https://pastefy.app/TkoK3YOZ/raw"))()
end

local scriptTitle = "KingScriptsHub" -- Put the title of your script (you can also leave this blank)

local Discord = true -- Put "false" if you don't want the player to be able to copy a discord link, put true if you do.
local Note = false -- Tick either true or false if youre writing a note

-- Only do the following if you ticked one of the variables true

local discordLink = "" -- Put your discord link here
local note = "" -- Put a note here

-- Don't touch the rest of the script or it will break.

-- 9/6/2025 1:35AM

print("developed by yourhelpfulscripter on youtube")

--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 39 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {};

local testingmode = false

-- StarterGui.KeySystem
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[KeySystem]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"].ResetOnSpawn = false


-- StarterGui.KeySystem.KeyFrame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0.3528, 0, 0.76596, 0);
G2L["2"]["Position"] = UDim2.new(0.36599, 0, 0.11053, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[KeyFrame]];

local UserInputService = game:GetService("UserInputService")

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
	G2L["2"].Enabled = true
	G2L["2"].Draggable = true
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));

	local gui = G2L["2"]

	local dragging
	local dragInput
	local dragStart
	local startPos

	function Lerp(a, b, m)
		return a + (b - a) * m
	end;

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;

		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	runService.Heartbeat:Connect(Update)
end


-- StarterGui.KeySystem.KeyFrame.KeySystemTitle
G2L["3"] = Instance.new("TextLabel", G2L["2"]);
G2L["3"]["TextWrapped"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextSize"] = 14;
G2L["3"]["TextScaled"] = true;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Size"] = UDim2.new(0.77384, 0, 0.19395, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[Key System]];
G2L["3"]["Name"] = [[KeySystemTitle]];
G2L["3"]["Position"] = UDim2.new(0.11125, 0, 0.05103, 0);


-- StarterGui.KeySystem.KeyFrame.KeySystemTitle.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["3"]);
G2L["4"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.KeySystemTitle.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["3"]);
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(210, 210, 210)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.KeySystem.KeyFrame.UICorner
G2L["6"] = Instance.new("UICorner", G2L["2"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.KeySystem.KeyFrame.UIStroke
G2L["7"] = Instance.new("UIStroke", G2L["2"]);
G2L["7"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.ScriptName
G2L["8"] = Instance.new("TextLabel", G2L["2"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(0.77384, 0, 0.09572, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = scriptTitle;
G2L["8"]["Name"] = [[ScriptName]];
G2L["8"]["Position"] = UDim2.new(0.11125, 0, 0.24425, 0);


-- StarterGui.KeySystem.KeyFrame.ScriptName.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.ScriptName.UIGradient
G2L["a"] = Instance.new("UIGradient", G2L["8"]);
G2L["a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(210, 210, 210)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.KeySystem.KeyFrame.UIGradient
G2L["b"] = Instance.new("UIGradient", G2L["2"]);
G2L["b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(103, 103, 103))};


-- StarterGui.KeySystem.KeyFrame.CheckKey
G2L["c"] = Instance.new("TextButton", G2L["2"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextTransparency"] = 1;
G2L["c"]["TextSize"] = 27;
G2L["c"]["TextScaled"] = true;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c"]["Size"] = UDim2.new(0.88556, 0, 0.14358, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[ ]];
G2L["c"]["Name"] = [[CheckKey]];
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.625, 0);
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"].MouseButton1Click:Connect(function()
	if G2L["20"].Text == Key then
		G2L["3"].Text = "Correct Key!"
		task.wait(3)
		G2L["2"]:Destroy()
		ScriptHere()
	else
		G2L["3"].Text = "Wrong Key!"
		task.wait(3)
		G2L["3"].Text = "Key System"
	end
end)

local btn = G2L["c"]

local isHovering = false


btn.MouseEnter:Connect(function()

	isHovering = true

	btn:TweenSize(UDim2.new(0.91556, 0, 0.16358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseLeave:Connect(function()

	isHovering = false

	btn:TweenSize(UDim2.new(0.88556, 0, 0.14358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Down:Connect(function()

	btn:TweenSize(UDim2.new(0.85556, 0, 0.11358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Up:Connect(function()

	if not isHovering then
		btn:TweenSize(UDim2.new(0.88556, 0, 0.14358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	else
		btn:TweenSize(UDim2.new(0.91556, 0, 0.16358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end
end)



-- StarterGui.KeySystem.KeyFrame.CheckKey.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["c"]);
G2L["d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["d"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.CheckKey.UICorner
G2L["e"] = Instance.new("UICorner", G2L["c"]);
G2L["e"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.KeySystem.KeyFrame.CheckKey.UIGradient
G2L["f"] = Instance.new("UIGradient", G2L["c"]);
G2L["f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(107, 107, 107)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(107, 107, 107))};


-- StarterGui.KeySystem.KeyFrame.CheckKey.TextLabel
G2L["10"] = Instance.new("TextLabel", G2L["c"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Size"] = UDim2.new(0.99916, 0, 0.99394, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Check Key]];
G2L["10"]["Position"] = UDim2.new(-0.00345, 0, 0, 0);


-- StarterGui.KeySystem.KeyFrame.CheckKey.TextLabel.UIStroke
G2L["11"] = Instance.new("UIStroke", G2L["10"]);
G2L["11"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.GetLink
G2L["12"] = Instance.new("TextButton", G2L["2"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextTransparency"] = 1;
G2L["12"]["TextSize"] = 27;
G2L["12"]["TextScaled"] = true;
G2L["12"]["TextColor3"] = Color3.fromRGB(67, 67, 67);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12"]["Size"] = UDim2.new(0.88556, 0, 0.14358, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[ ]];
G2L["12"]["Name"] = [[GetLink]];
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["12"]["Position"] = UDim2.new(0.5, 0 ,0.807, 0);
G2L["12"].MouseButton1Click:Connect(function()
	G2L["3"].Text = "Link Copied!"
	setclipboard(KeyLink)
	task.wait(3)
	G2L["3"].Text = "Key System"
end)

local btn = G2L["12"]

local isHovering = false


btn.MouseEnter:Connect(function()

	isHovering = true

	btn:TweenSize(UDim2.new(0.91556, 0, 0.16358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseLeave:Connect(function()

	isHovering = false

	btn:TweenSize(UDim2.new(0.88556, 0, 0.14358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Down:Connect(function()

	btn:TweenSize(UDim2.new(0.85556, 0, 0.11358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
end)

btn.MouseButton1Up:Connect(function()

	if not isHovering then
		btn:TweenSize(UDim2.new(0.88556, 0, 0.14358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	else
		btn:TweenSize(UDim2.new(0.91556, 0, 0.16358, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 0.2, true)
	end
end)



-- StarterGui.KeySystem.KeyFrame.GetLink.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["12"]);
G2L["13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["13"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.GetLink.UICorner
G2L["14"] = Instance.new("UICorner", G2L["12"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.KeySystem.KeyFrame.GetLink.UIGradient
G2L["15"] = Instance.new("UIGradient", G2L["12"]);
G2L["15"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(107, 107, 107)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(107, 107, 107))};


-- StarterGui.KeySystem.KeyFrame.GetLink.TextLabel
G2L["16"] = Instance.new("TextLabel", G2L["12"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextSize"] = 14;
G2L["16"]["TextScaled"] = true;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Size"] = UDim2.new(0.99916, 0, 0.99394, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Get Key]];
G2L["16"]["Position"] = UDim2.new(-0.00345, 0, 0, 0);


-- StarterGui.KeySystem.KeyFrame.GetLink.TextLabel.UIStroke
G2L["17"] = Instance.new("UIStroke", G2L["16"]);
G2L["17"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.DiscordButton

if Discord == true then
	G2L["18"] = Instance.new("ImageButton", G2L["2"]);
	G2L["18"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX;
	G2L["18"]["BorderSizePixel"] = 0;
	G2L["18"]["BackgroundTransparency"] = 1;
	-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
	G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["18"]["Image"] = [[rbxassetid://18505728201]];
	G2L["18"]["Size"] = UDim2.new(0.122, 0, 0.122, 0);
	G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["18"]["Name"] = [[DiscordButton]];
	G2L["18"]["Position"] = UDim2.new(0.8625, 0, 0.02768, 0);
	G2L["18"].MouseButton1Click:Connect(function()
		setclipboard(discordLink)
		G2L["3"].Text = "Copied Discord!"
		task.wait(3)
		G2L["3"].Text = "Key System"
	end)
else
	print("user does not want to use discord.")
end


-- StarterGui.KeySystem.KeyFrame.DiscordButton.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 255);


-- StarterGui.KeySystem.KeyFrame.DiscordButton.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["18"]);
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.UIStroke
G2L["1b"] = Instance.new("UIStroke", G2L["2"]);
G2L["1b"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.KeyHere
G2L["1c"] = Instance.new("Frame", G2L["2"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["Size"] = UDim2.new(0.88481, 0, 0.14271, 0);
G2L["1c"]["Position"] = UDim2.new(0.0539, 0, 0.36968, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[KeyHere]];



-- StarterGui.KeySystem.KeyFrame.KeyHere.UIGradient
G2L["1d"] = Instance.new("UIGradient", G2L["1c"]);
G2L["1d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(107, 107, 107)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(107, 107, 107))};


-- StarterGui.KeySystem.KeyFrame.KeyHere.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1c"]);
G2L["1e"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.KeySystem.KeyFrame.KeyHere.UIStroke
G2L["1f"] = Instance.new("UIStroke", G2L["1c"]);
G2L["1f"]["Thickness"] = 3;


-- StarterGui.KeySystem.KeyFrame.KeyHere.KeyBox
G2L["20"] = Instance.new("TextBox", G2L["1c"]);
G2L["20"]["CursorPosition"] = -1;
G2L["20"]["Name"] = [[KeyBox]];
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextWrapped"] = true;
G2L["20"]["TextSize"] = 14;
G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["TextScaled"] = true;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["20"]["Size"] = UDim2.new(0.9977, 0, 1, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[]];
G2L["20"]["BackgroundTransparency"] = 1;

-- StarterGui.KeySystem.KeyFrame.KeyHere.KeyBox.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["20"]);
G2L["21"]["Thickness"] = 3;

if note then
	-- StarterGui.KeySystem.KeyFrame.TextNote
	G2L["25"] = Instance.new("TextLabel", G2L["2"]);
	G2L["25"]["TextWrapped"] = true;
	G2L["25"]["BorderSizePixel"] = 0;
	G2L["25"]["TextSize"] = 14;
	G2L["25"]["TextScaled"] = true;
	G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["25"]["BackgroundTransparency"] = 1;
	G2L["25"]["Size"] = UDim2.new(0.77384, 0, 0.09572, 0);
	G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["25"]["Text"] = note;
	G2L["25"]["Name"] = [[TextNote]];
	G2L["25"]["Position"] = UDim2.new(0.11227, 0, 0.8942, 0);
	
	-- StarterGui.KeySystem.KeyFrame.TextNote.UIStroke
	G2L["26"] = Instance.new("UIStroke", G2L["25"]);
	G2L["26"]["Thickness"] = 3;


	-- StarterGui.KeySystem.KeyFrame.TextNote.UIGradient
	G2L["27"] = Instance.new("UIGradient", G2L["25"]);
	G2L["27"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(210, 210, 210)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};
else
	print("no note")
end

task.wait(15)

if testingmode == true then
	G2L["2"]:Destroy()
end

return G2L["1"], require;
