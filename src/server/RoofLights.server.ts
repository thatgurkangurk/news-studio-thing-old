import { CollectionService, ServerStorage } from "@rbxts/services";
import RoofLightManager from "serverStorage/RoofLightManager";

const RoofLightControls = game.Workspace.Studio.RoofLightControls;
const { Transparency, Brightness, Colour } = ServerStorage.RoofLights;
const RoofLights: Part[] = [];

CollectionService.GetTagged("RoofLight").forEach((item) => {
	if (item.IsA("Part")) {
		RoofLights.push(item);
	}
});

RoofLightControls.ToggleLight.Button.ProximityPrompt.Triggered.Connect(() => {
	RoofLightManager.Toggle();
});

RoofLightControls.FadeLightToggle.Button.ProximityPrompt.Triggered.Connect(() => {
	if (Brightness.Value === 4) {
		RoofLightManager.FadeOut();
	} else {
		RoofLightManager.FadeIn();
	}
});

Brightness.Changed.Connect((value) => {
	RoofLights.forEach((light) => {
		const SurfaceLight = light.FindFirstChildWhichIsA("SurfaceLight") as SurfaceLight;
		SurfaceLight.Brightness = value;
	});
});

Colour.Changed.Connect((value) => {
	RoofLights.forEach((light) => {
		const SurfaceLight = light.FindFirstChildWhichIsA("SurfaceLight") as SurfaceLight;
		SurfaceLight.Color = value;
	});
});

Transparency.Changed.Connect((value) => {
	RoofLights.forEach((light) => {
		light.Transparency = value;
	});
});
