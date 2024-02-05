local ServerStorage = game:GetService("ServerStorage")
local ScreenControls = game.Workspace.Studio.ScreenControls
local textLabel = ScreenControls.Countdown.Button.SurfaceGui.TextLabel
local proximityPrompt = ScreenControls.Countdown.Button.ProximityPrompt
local ClockText = game.Workspace.Studio.Screen.screen.SurfaceGui.ClockText
local Audio = game.Workspace.CountdownSound
local IsSpotlightOn = ServerStorage.IsScreenOn
local LightManager = require(ServerStorage.LightManager)
local ScreenManager = require(ServerStorage.ScreenManager)
local RoofLightManager = require(ServerStorage.RoofLightManager)
local Utils = require(ServerStorage.Utils)

local Countdown = {}

Countdown.isReady = true

function Countdown.Start()
	if not Countdown.isReady then
		return
	end
	local wasStageLightsOnBeforeStarting = IsSpotlightOn.Value
	local screenColourBeforeStarting = ScreenManager.GetColour()
	textLabel.Text = "wait..."
	proximityPrompt.Enabled = false
	Countdown.isReady = false

	LightManager.FadeOut()
	RoofLightManager.FadeOut()
	ScreenManager.FadeScreenColour(Color3.fromRGB(0, 0, 0))
	wait(7)

	-- screen logic...
	ClockText.Visible = true
	ClockText.TextTransparency = 0
	ClockText.Text = "17:59:50"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:51"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:52"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:53"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:54"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:55"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:56"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:57"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:58"
	Audio:Play()
	wait(1)
	ClockText.Text = "17:59:59"
	Audio:Play()
	wait(1)
	ClockText.Text = "18:00:00"
	Audio:Play()
	wait(1)
	ClockText.Transparency = 1
	ClockText.Text = "stv news"
	LightManager.FadeIn()
	Utils.Tween(ClockText, 2, {
		TextTransparency = 0,
	}):Play()

	task.wait(3)
	Utils.Tween(ClockText, 2, {
		TextTransparency = 1,
	}):Play()
	task.wait(2)
	ClockText.Visible = false

	if wasStageLightsOnBeforeStarting then
		LightManager.FadeIn()
	else
		LightManager.FadeOut()
	end

	RoofLightManager.FadeIn()
	ScreenManager.FadeScreenColour(screenColourBeforeStarting)

	textLabel.Text = "start countdown"
	proximityPrompt.Enabled = true
	Countdown.isReady = true
end

return Countdown
