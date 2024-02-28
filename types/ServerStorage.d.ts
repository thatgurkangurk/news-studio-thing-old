interface ServerStorage extends Instance {
	Freecam: ScreenGui & {
		FreecamScript: LocalScript;
	};
	IsSpotlightOn: BoolValue;
	ScreenColour: Color3Value;
	SpotlightBrightness: NumberValue;
	IsScreenOn: BoolValue;
	RoofLights: Folder & {
		Brightness: NumberValue;
		Transparency: NumberValue;
		Colour: Color3Value;
	};
}
