local LightControls = game.Workspace.Studio.LightControls
local ServerStorage = game:GetService("ServerStorage")
local LightManager = require(ServerStorage.TS.LightManager)
local IsSpotlightOn = ServerStorage.IsSpotlightOn
local CollectionService = game:GetService("CollectionService")
local StageLights = CollectionService:GetTagged("Spotlight")
local DefaultSpotlightBrightness = ServerStorage.SpotlightBrightness.Value

LightControls.ToggleLight.ToggleLight.Attachment.ProximityPrompt.Triggered:Connect(function()
	LightManager.ToggleAllLights()
end)

LightControls.FadeLightToggle.FadeLightToggle.Attachment.ProximityPrompt.Triggered:Connect(function()
	LightManager.FadeAllLights()
end)

IsSpotlightOn.Changed:Connect(function(value)
	for _, light: SpotLight in ipairs(StageLights) do
		if value then
			light.Enabled = true
			light.Brightness = DefaultSpotlightBrightness
			light.Parent.Transparency = 0
		else
			light.Enabled = false
			light.Brightness = 0
			light.Parent.Transparency = 1
		end
	end
end)
