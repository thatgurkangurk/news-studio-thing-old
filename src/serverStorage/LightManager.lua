local CollectionService = game:GetService("CollectionService")
local ServerStorage = game:GetService("ServerStorage")
local Utils = require(ServerStorage.Utils)

local LightManager = {}

LightManager.isTweenFinished = true

function LightManager.ToggleAllLights()
	for _, part: SpotLight in CollectionService:GetTagged("Spotlight") do
		if part.Enabled then
			part.Enabled = false
			part.Parent.Transparency = 1
		else
			part.Enabled = true
			part.Parent.Transparency = 0
		end
	end
end

function LightManager.FadeAllLights()
	for _, light: SpotLight in CollectionService:GetTagged("Spotlight") do
		local lampPart: Part = light.Parent
		if not light.Enabled then
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
				LightManager.isTweenFinished = true
			end)
		else
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
			end)
		end
	end
end

return LightManager
