local ServerStorage = game:GetService("ServerStorage")
local LightManager = require(ServerStorage.LightManager)
local ToggleLightsServer = ServerStorage.Events.ToggleLights
local FadeAllLights = ServerStorage.Events.FadeAllLights

ToggleLightsServer.Event:Connect(function()
	LightManager.ToggleAllLights()
end)

FadeAllLights.Event:Connect(function()
	LightManager.FadeAllLights()
end)
