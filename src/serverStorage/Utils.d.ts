interface Utils {
	// define Utils member types
	tween(part: Part, duration: number, propertyTable: { [key: string]: unknown }): void;
}

// create a value from our type
declare const Utils: Utils;

export = Utils;
