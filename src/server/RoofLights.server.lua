local ServerStorage = game:GetService("ServerStorage")
local CollectionService = game:GetService("CollectionService")
local Transparency = ServerStorage.RoofLights.Transparency
local Brightness = ServerStorage.RoofLights.Brightness
local Colour = ServerStorage.RoofLights.Colour
local RoofLightControls = game.Workspace.Studio.RoofLightControls
local RoofLights: { Part } = CollectionService:GetTagged("RoofLight")
local RoofLightManager = require(ServerStorage.TS.RoofLightManager)

RoofLightControls.ToggleLight.Button.ProximityPrompt.Triggered:Connect(function()
	RoofLightManager.Toggle()
end)

RoofLightControls.FadeLightToggle.Button.ProximityPrompt.Triggered:Connect(function()
	if Brightness.Value == 4 then
		RoofLightManager.FadeOut()
	else
		RoofLightManager.FadeIn()
	end
end)

Brightness.Changed:Connect(function(value)
	for _, light in ipairs(RoofLights) do
		local SurfaceLight = light:FindFirstChildWhichIsA("SurfaceLight")
		SurfaceLight.Brightness = value
	end
end)

Colour.Changed:Connect(function(value)
	for _, light in ipairs(RoofLights) do
		local SurfaceLight = light:FindFirstChildWhichIsA("SurfaceLight")
		SurfaceLight.Color = value
	end
end)

Transparency.Changed:Connect(function(value)
	for _, light in ipairs(RoofLights) do
		light.Transparency = value
	end
end)
