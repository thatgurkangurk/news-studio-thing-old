local ScreenControls = game.Workspace.Studio.ScreenControls
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")
local Countdown = require(ServerStorage.Countdown)
local ToggleScreen = ServerStorage.Events.ToggleScreen
local ScreenColour = ServerStorage.ScreenColour
local StartCountdownEvent = ReplicatedStorage.StartCountdown
local SetScreenColour = ReplicatedStorage.SetScreenColour

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

ScreenControls.ScreenColours.White.Button.ProximityPrompt.Triggered:Connect(function()
	ScreenColour.Value = Color3.fromRGB(255, 255, 255)
end)

ScreenControls.ScreenColours.Black.Button.ProximityPrompt.Triggered:Connect(function()
	ScreenColour.Value = Color3.fromRGB(0, 0, 0)
end)

ScreenControls.Countdown.Button.ProximityPrompt.Triggered:Connect(function()
	Countdown.Start()
end)

StartCountdownEvent.OnServerEvent:Connect(function()
	Countdown.Start()
end)

SetScreenColour.OnServerEvent:Connect(function(_, colour)
	if colour == "green" then
		ScreenColour.Value = Color3.fromRGB(60, 255, 0)
	end
end)
