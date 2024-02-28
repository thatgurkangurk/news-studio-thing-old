import { ReplicatedStorage } from "@rbxts/services";

const StartCountdown = new Instance("RemoteEvent", ReplicatedStorage);
const SetScreenColour = new Instance("RemoteEvent", ReplicatedStorage);

StartCountdown.Name = "StartCountdown";
SetScreenColour.Name = "SetScreenColour";

export { StartCountdown, SetScreenColour };
