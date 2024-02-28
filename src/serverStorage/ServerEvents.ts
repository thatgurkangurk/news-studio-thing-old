import { ServerStorage } from "@rbxts/services";

const Events = new Instance("Folder", ServerStorage);
const ToggleScreen = new Instance("BindableEvent", Events);
const ToggleLights = new Instance("BindableEvent", Events);
const FadeAllLights = new Instance("BindableEvent", Events);

Events.Name = "Events";
ToggleScreen.Name = "ToggleScreen";
ToggleLights.Name = "ToggleLights";
FadeAllLights.Name = "FadeAllLights";

export { Events, ToggleScreen };
