local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local StartCountdown = ReplicatedStorage.StartCountdown
local SetScreenColour = ReplicatedStorage.SetScreenColour

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.H then
			StartCountdown:FireServer()
		end

		if input.KeyCode == Enum.KeyCode.G then
			SetScreenColour:FireServer("green")
		end
	end
end)
