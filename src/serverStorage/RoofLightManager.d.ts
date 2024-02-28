interface RoofLightManager {
	// define RoofLightManager member types
	Toggle(): void;
	FadeIn(): void;
	FadeOut(): void;
}

// create a value from our type
declare const RoofLightManager: RoofLightManager;

export = RoofLightManager;
