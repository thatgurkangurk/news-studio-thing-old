local CollectionService = game:GetService("CollectionService")
local ServerStorage = game:GetService("ServerStorage")
local Utils = require(ServerStorage.Utils)
local IsSpotlightOn = ServerStorage.IsSpotlightOn

local LightManager = {}

LightManager.isTweenFinished = true

function LightManager.ToggleAllLights()
	IsSpotlightOn.Value = not IsSpotlightOn.Value
end

function LightManager.FadeIn()
	for _, light: SpotLight in CollectionService:GetTagged("Spotlight") do
		local lampPart: Part = light.Parent
		light.Enabled = true
		local endBrightness = ServerStorage.SpotlightBrightness.Value

		local lightTween = Utils.Tween(light, 2, {
			Brightness = endBrightness,
		})

		lightTween:Play()

		local lampTween = Utils.Tween(lampPart, 2, {
			Transparency = 0,
		})

		lampTween:Play()

		LightManager.isTweenFinished = false

		lightTween.Completed:Connect(function()
			IsSpotlightOn.Value = true
			LightManager.isTweenFinished = true
		end)
	end
end

function LightManager.FadeOut()
	for _, light: SpotLight in CollectionService:GetTagged("Spotlight") do
		local lampPart: Part = light.Parent
		local endBrightness = 0

		local lightTween = Utils.Tween(light, 2, {
			Brightness = endBrightness,
		})

		lightTween:Play()

		local lampTween = Utils.Tween(lampPart, 2, {
			Transparency = 1,
		})

		lampTween:Play()

		LightManager.isTweenFinished = false

		lightTween.Completed:Connect(function()
			LightManager.isTweenFinished = true
			light.Enabled = false
			IsSpotlightOn.Value = false
		end)
	end
end

function LightManager.FadeAllLights()
	if not IsSpotlightOn.Value then
		LightManager.FadeIn()
	else
		LightManager.FadeOut()
	end
end

return LightManager
