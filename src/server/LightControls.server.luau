local LightControls = game.Workspace.Studio.LightControls
local ServerStorage = game:GetService("ServerStorage")
local ToggleLights = ServerStorage.Events.ToggleLights
local FadeAllLights = ServerStorage.Events.FadeAllLights

LightControls.ToggleLight.ToggleLight.Attachment.ProximityPrompt.Triggered:Connect(function()
	ToggleLights:Fire()
end)

LightControls.FadeLightToggle.FadeLightToggle.Attachment.ProximityPrompt.Triggered:Connect(function()
	FadeAllLights:Fire()
end)
