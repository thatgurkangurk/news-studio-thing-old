interface Workspace extends Instance {
	Studio: Model & {
		LightControls: Model & {
			ToggleLight: Folder & {
				ToggleLight: Part & {
					Attachment: Attachment & {
						ProximityPrompt: ProximityPrompt;
					};
				};
			};
			FadeLightToggle: Folder & {
				FadeLightToggle: Part & {
					Attachment: Attachment & {
						ProximityPrompt: ProximityPrompt;
					};
				};
			};
		};
	};
}

interface ServerStorage extends Instance {
	IsSpotlightOn: BoolValue;
}
