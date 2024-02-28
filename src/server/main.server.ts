import { CollectionService, Players, ServerStorage } from "@rbxts/services";

// setup events
import "serverStorage/ServerEvents";
import "shared/SharedEvents";

for (const light of CollectionService.GetTagged("Spotlight")) {
	if (light.IsA("SpotLight")) {
		light.Brightness = ServerStorage.SpotlightBrightness.Value;
		light.Enabled = ServerStorage.IsSpotlightOn.Value;
	}
}

const playersWithFreecam = [
	4222131256, // thatgurkangurkz
	3279899567, // thatgurkangurk
	4119986294, // neweridentity
	5538951263, // lubieplacki_xd1230 (a friend's alt)
];

function playerJoin(player: Player) {
	const Freecam = ServerStorage.Freecam;
	function giveFreecamAccess() {
		const PlayerGui = player.WaitForChild("PlayerGui", 10);
		if (PlayerGui?.IsA("PlayerGui")) {
			const FreecamCheck = PlayerGui.FindFirstChild("Freecam");

			if (!FreecamCheck) {
				const newFreecam = Freecam.Clone();
				task.delay(1, () => {
					newFreecam.Parent = PlayerGui;
					print("you have freecam access!");
				});
			}
		}
	}

	if (playersWithFreecam.includes(player.UserId)) {
		if (!Freecam) {
			warn("freecam is not in serverstorage");
			return;
		}

		giveFreecamAccess();
		player.CharacterAdded.Connect(giveFreecamAccess);
	}
}

for (const player of Players.GetChildren()) {
	if (player.IsA("Player")) {
		print(player.Name + " was somehow in the game before the server was fully loaded, handling it.");
		playerJoin(player);
	}
}

Players.PlayerAdded.Connect((player) => {
	playerJoin(player);
});
