local screen = game.Workspace.Studio.Screen.screen.SurfaceGui.Frame
local ServerStorage = game:GetService("ServerStorage")
local IsScreenOn = ServerStorage.IsScreenOn
local ScreenColour = ServerStorage.ScreenColour

IsScreenOn.Changed:Connect(function(value)
	local button = game.Workspace.Studio.ScreenControls.ToggleScreen.Button

	if value == true then
		button.SurfaceGui.TextLabel.Text = "turn screen off"
		button.ProximityPrompt.ActionText = "turn screen off"
		screen.BackgroundTransparency = 0
	else
		button.SurfaceGui.TextLabel.Text = "turn screen on"
		button.ProximityPrompt.ActionText = "turn screen on"
		screen.BackgroundTransparency = 1
	end
end)

ScreenColour.Changed:Connect(function(value)
	screen.BackgroundColor3 = value
end)
