interface ScreenManager {
	// define ScreenManager member types
	ToggleScreen(): void;
	FadeScreenColour(colour: Color3Value): void;
	GetColour(): Color3 | Color3Value;
}

// create a value from our type
declare const ScreenManager: ScreenManager;

export = ScreenManager;
