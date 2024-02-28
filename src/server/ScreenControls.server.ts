import { ReplicatedStorage, ServerStorage } from "@rbxts/services";
import Countdown from "serverStorage/Countdown";
import { ToggleScreen } from "serverStorage/ServerEvents";
import { SetScreenColour, StartCountdown } from "shared/SharedEvents";

const ScreenControls = game.Workspace.Studio.ScreenControls;
const ScreenColour = ServerStorage.ScreenColour;

ScreenControls.ToggleScreen.Button.ProximityPrompt.TriggerEnded.Connect(() => {
	ToggleScreen.Fire();
});

ScreenControls.ScreenColours.Red.Button.ProximityPrompt.Triggered.Connect(() => {
	ScreenColour.Value = Color3.fromRGB(255, 0, 0);
});

ScreenControls.ScreenColours.Green.Button.ProximityPrompt.Triggered.Connect(() => {
	ScreenColour.Value = Color3.fromRGB(60, 255, 0);
});

ScreenControls.ScreenColours.Blue.Button.ProximityPrompt.Triggered.Connect(() => {
	ScreenColour.Value = Color3.fromRGB(0, 5, 255);
});

ScreenControls.ScreenColours.White.Button.ProximityPrompt.Triggered.Connect(() => {
	ScreenColour.Value = Color3.fromRGB(255, 255, 255);
});

ScreenControls.ScreenColours.Black.Button.ProximityPrompt.Triggered.Connect(() => {
	ScreenColour.Value = Color3.fromRGB(0, 0, 0);
});

ScreenControls.Countdown.Button.ProximityPrompt.Triggered.Connect(() => {
	Countdown.Start();
});

StartCountdown.OnServerEvent.Connect(() => {
	Countdown.Start();
});

SetScreenColour.OnServerEvent.Connect((_, colour) => {
	if (colour === "green") {
		ScreenColour.Value = Color3.fromRGB(60, 255, 0);
	}
});
