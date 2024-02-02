local ScreenControls = game.Workspace.Studio.ScreenControls
local ServerStorage = game:GetService("ServerStorage")
local ToggleScreen = ServerStorage.Events.ToggleScreen

ScreenControls.ToggleScreen.Button.ProximityPrompt.Triggered:Connect(function()
	ToggleScreen:Fire()
end)
