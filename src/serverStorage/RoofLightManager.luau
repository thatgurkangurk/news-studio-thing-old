local ServerStorage = game:GetService("ServerStorage")
local Transparency = ServerStorage.RoofLights.Transparency
local Brightness = ServerStorage.RoofLights.Brightness
local CollectionService = game:GetService("CollectionService")
local Utils = require(ServerStorage.Utils)
local RoofLights: { Part } = CollectionService:GetTagged("RoofLight")

local RoofLightManager = {}

function RoofLightManager.Toggle()
	if Brightness.Value == 4 then
		Brightness.Value = 0
		Transparency.Value = 1
	else
		Brightness.Value = 4
		Transparency.Value = 0
	end
end

function RoofLightManager.FadeIn()
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

function RoofLightManager.FadeOut()
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
end

return RoofLightManager
