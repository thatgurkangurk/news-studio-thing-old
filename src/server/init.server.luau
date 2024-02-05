local CollectionService = game:GetService("CollectionService")
local ServerStorage = game:GetService("ServerStorage")
local IsSpotlightOn = ServerStorage.IsSpotlightOn

print("server has started")

-- set all lights to correct state
for _, part: SpotLight in CollectionService:GetTagged("Spotlight") do
	part.Brightness = ServerStorage.SpotlightBrightness.Value
	part.Enabled = IsSpotlightOn.Value
end
