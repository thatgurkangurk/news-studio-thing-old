interface LightManager {
	// define LightManager member types
	ToggleAllLights(): void;
	FadeIn(): void;
	FadeOut(): void;
	FadeAllLights(): void;
	isTweenFinished: boolean;
}

// create a value from our type
declare const LightManager: LightManager;

export = LightManager;
