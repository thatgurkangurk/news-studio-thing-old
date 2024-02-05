local BackgroundFrame = game.Workspace.Studio.Screen.screen.SurfaceGui.Frame
local ServerStorage = game:GetService("ServerStorage")
local IsScreenOn = ServerStorage.IsScreenOn
local ScreenColour = ServerStorage.ScreenColour
local Utils = require(ServerStorage.Utils)

local ScreenManager = {}

function ScreenManager.ToggleScreen()
	IsScreenOn.Value = not IsScreenOn.Value
end

function ScreenManager.FadeScreenColour(colour: Color3Value)
	local tween = Utils.Tween(BackgroundFrame, 2, {
		BackgroundColor3 = colour,
	})

	-- Play the tween
	tween:Play()

	tween.Completed:Connect(function()
		ScreenColour.Value = colour
	end)
end

function ScreenManager.GetColour()
	return ScreenColour.Value
end

return ScreenManager
