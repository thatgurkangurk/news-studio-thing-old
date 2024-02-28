import { CollectionService, ServerStorage, Workspace } from "@rbxts/services";
import LightManager from "serverStorage/LightManager";

const LightControls = Workspace.Studio.LightControls;

LightControls.ToggleLight.ToggleLight.Attachment.ProximityPrompt.Triggered.Connect(() => {
	LightManager.ToggleAllLights();
});

LightControls.FadeLightToggle.FadeLightToggle.Attachment.ProximityPrompt.Triggered.Connect(() => {
	LightManager.FadeAllLights();
});

ServerStorage.IsSpotlightOn.Changed.Connect((value) => {
	CollectionService.GetTagged("Spotlight").forEach((obj) => {
		if (obj.IsA("SpotLight") && obj.Parent?.IsA("Part")) {
			if (value) {
				obj.Enabled = true;
				obj.Brightness = 2.72; // default spotlight brightness
				obj.Parent.Transparency = 0;
			} else {
				obj.Enabled = false;
				obj.Brightness = 0;
				obj.Parent.Transparency = 1;
			}
		}
	});
});
