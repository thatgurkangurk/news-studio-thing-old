import ScreenManager from "serverStorage/ScreenManager";
import { ToggleScreen } from "serverStorage/ServerEvents";

ToggleScreen.Event.Connect(() => {
	ScreenManager.ToggleScreen();
	print("YESSSSS");
});
