local ScreenControls = game.Workspace.Studio.ScreenControls
local ServerStorage = game:GetService("ServerStorage")
local ToggleScreen = ServerStorage.Events.ToggleScreen
local ScreenColour = ServerStorage.ScreenColour

ScreenControls.ToggleScreen.Button.ProximityPrompt.Triggered:Connect(function()
	ToggleScreen:Fire()
end)

ScreenControls.ScreenColours.Red.Button.ProximityPrompt.Triggered:Connect(function()
	ScreenColour.Value = Color3.fromRGB(255, 0, 0)
end)

ScreenControls.ScreenColours.Green.Button.ProximityPrompt.Triggered:Connect(function()
	ScreenColour.Value = Color3.fromRGB(60, 255, 0)
end)

ScreenControls.ScreenColours.Blue.Button.ProximityPrompt.Triggered:Connect(function()
	ScreenColour.Value = Color3.fromRGB(0, 38, 255)
end)
