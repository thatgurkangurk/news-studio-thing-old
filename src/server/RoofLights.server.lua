local ServerStorage = game:GetService("ServerStorage")
local CollectionService = game:GetService("CollectionService")
local Transparency = ServerStorage.RoofLights.Transparency
local Brightness = ServerStorage.RoofLights.Brightness
local Colour = ServerStorage.RoofLights.Colour
local RoofLightControls = game.Workspace.Studio.RoofLightControls
local RoofLights: { Part } = CollectionService:GetTagged("RoofLight")
local Utils = require(ServerStorage.Utils)

RoofLightControls.ToggleLight.Button.ProximityPrompt.Triggered:Connect(function()
	if Brightness.Value == 4 then
		Brightness.Value = 0
		Transparency.Value = 1
	else
		Brightness.Value = 4
		Transparency.Value = 0
	end
end)

RoofLightControls.FadeLightToggle.Button.ProximityPrompt.Triggered:Connect(function()
	if Brightness.Value == 4 then
		for _, light in ipairs(RoofLights) do
			local surfaceLight = light:FindFirstChildWhichIsA("SurfaceLight")
			local transparencyTween = Utils.Tween(light, 2, {
				Transparency = 1,
			})
			local brightnessTween = Utils.Tween(surfaceLight, 2, {
				Brightness = 0,
			})

			transparencyTween:Play()
			brightnessTween:Play()

			transparencyTween.Completed:Connect(function()
				Transparency.Value = 1
			end)
			brightnessTween.Completed:Connect(function()
				Brightness.Value = 0
			end)
		end
	else
		for _, light in ipairs(RoofLights) do
			local surfaceLight = light:FindFirstChildWhichIsA("SurfaceLight")
			local transparencyTween = Utils.Tween(light, 2, {
				Transparency = 0,
			})
			local brightnessTween = Utils.Tween(surfaceLight, 2, {
				Brightness = 4,
			})

			transparencyTween:Play()
			brightnessTween:Play()

			transparencyTween.Completed:Connect(function()
				Transparency.Value = 0
			end)
			brightnessTween.Completed:Connect(function()
				Brightness.Value = 4
			end)
		end
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
