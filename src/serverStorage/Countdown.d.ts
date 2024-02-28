interface Countdown {
	// define Countdown member types
	Start(): void;
	isReady: boolean;
}

// create a value from our type
declare const Countdown: Countdown;

export = Countdown;
