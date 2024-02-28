import { ServerStorage } from "@rbxts/services";

const screen = game.Workspace.Studio.Screen.screen.SurfaceGui.Frame;
const IsScreenOn = ServerStorage.IsScreenOn;
const ScreenColour = ServerStorage.ScreenColour;

IsScreenOn.Changed.Connect((value) => {
	const button = game.Workspace.Studio.ScreenControls.ToggleScreen.Button;

	if (value) {
		button.SurfaceGui.TextLabel.Text = "turn screen off";
		button.ProximityPrompt.ActionText = "turn screen off";
		screen.BackgroundTransparency = 0;
	} else {
		button.SurfaceGui.TextLabel.Text = "turn screen on";
		button.ProximityPrompt.ActionText = "turn screen on";
		screen.BackgroundTransparency = 1;
	}
});

ScreenColour.Changed.Connect((value) => {
	screen.BackgroundColor3 = value;
});
