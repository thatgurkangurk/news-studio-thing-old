type Studio = Model & {
	floor: Part;
	SpawnLocation: SpawnLocation;
	roof: Part;
	StageLights: Model;
	RoofLights: Model;
	ScreenControls: Folder & {
		Countdown: Model & {
			Button: Part & {
				ProximityPrompt: ProximityPrompt;
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
			button_pole: Part;
		};
		ToggleScreen: Model & {
			button_pole: Part;
			Button: Part & {
				ProximityPrompt: ProximityPrompt;
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
		};
		ScreenColours: Model & {
			Blue: Folder & {
				button_pole: Part;
				Button: Part & {
					ProximityPrompt: ProximityPrompt;
					SurfaceGui: SurfaceGui & {
						TextLabel: TextLabel;
					};
				};
			};
			Green: Folder & {
				button_pole: Part;
				Button: Part & {
					ProximityPrompt: ProximityPrompt;
					SurfaceGui: SurfaceGui & {
						TextLabel: TextLabel;
					};
				};
			};
			White: Folder & {
				button_pole: Part;
				Button: Part & {
					ProximityPrompt: ProximityPrompt;
					SurfaceGui: SurfaceGui & {
						TextLabel: TextLabel;
					};
				};
			};
			Black: Folder & {
				button_pole: Part;
				Button: Part & {
					ProximityPrompt: ProximityPrompt;
					SurfaceGui: SurfaceGui & {
						TextLabel: TextLabel;
					};
				};
			};
			Red: Folder & {
				button_pole: Part;
				Button: Part & {
					ProximityPrompt: ProximityPrompt;
					SurfaceGui: SurfaceGui & {
						TextLabel: TextLabel;
					};
				};
			};
		};
	};
	Screen: Model & {
		screen: Part & {
			SurfaceGui: SurfaceGui & {
				ClockText: TextLabel & {
					UIScale: UIScale;
				};
				Frame: Frame;
			};
		};
	};
	LightControls: Model & {
		ToggleLight: Folder & {
			button_pole: Part;
			ToggleLight: Part & {
				Attachment: Attachment & {
					ProximityPrompt: ProximityPrompt;
				};
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
		};
		FadeLightToggle: Folder & {
			button_pole: Part;
			FadeLightToggle: Part & {
				Attachment: Attachment & {
					ProximityPrompt: ProximityPrompt;
				};
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
		};
	};
	RoofLightControls: Model & {
		ToggleLight: Folder & {
			Button: Part & {
				ProximityPrompt: ProximityPrompt;
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
			button_pole: Part;
		};
		FadeLightToggle: Folder & {
			Button: Part & {
				ProximityPrompt: ProximityPrompt;
				SurfaceGui: SurfaceGui & {
					TextLabel: TextLabel;
				};
			};
			button_pole: Part;
		};
	};
};

interface Workspace extends Instance {
	Studio: Studio;
}
