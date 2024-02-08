local CollectionService = game:GetService("CollectionService")
local ServerStorage = game:GetService("ServerStorage")
local IsSpotlightOn = ServerStorage.IsSpotlightOn
local Players = game:GetService("Players")

print("server has started")

-- set all lights to correct state
for _, part: SpotLight in CollectionService:GetTagged("Spotlight") do
	part.Brightness = ServerStorage.SpotlightBrightness.Value
	part.Enabled = IsSpotlightOn.Value
end

-- freecam
local playersWithFreecam = {
	4222131256, -- thatgurkangurkz
	3279899567, -- thatgurkangurk
	4119986294, -- neweridentity
	5538951263, -- lubieplacki_xd1230 (a friend's alt)
}

local function playerJoin(player: Player)
	if table.find(playersWithFreecam, player.UserId) then
		local Freecam = ServerStorage:FindFirstChild("Freecam")

		if not Freecam then
			warn("freecam is not in serverstorage")
			return
		end

		local function giveFreecamAccess()
			local PlayerGui = player:WaitForChild("PlayerGui", 10)
			local freecamCheck = PlayerGui:FindFirstChild("Freecam")

			if not freecamCheck then
				local newFreecam = Freecam:Clone()
				task.delay(1, function()
					newFreecam.Parent = PlayerGui
				end)
			end
		end

		giveFreecamAccess()
		player.CharacterAdded:Connect(giveFreecamAccess)
	end
end

for _, player in ipairs(Players:GetChildren()) do
	task.spawn(playerJoin, player)
end

Players.PlayerAdded:Connect(playerJoin)
