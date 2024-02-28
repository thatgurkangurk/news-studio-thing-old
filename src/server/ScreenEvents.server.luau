local ServerStorage = game:GetService("ServerStorage")
local ScreenManager = require(ServerStorage.TS.ScreenManager)
local ToggleScreen = ServerStorage.Events.ToggleScreen

ToggleScreen.Event:Connect(function()
	ScreenManager.ToggleScreen()
end)
