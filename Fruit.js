let longestName = "";
class Fruit {
	static getLongestName() {
		return longestName;
	}
	constructor(name, colour) {
		this.name = name;
		if (name.length > longestName.length) {
			longestName = name;
		}
		this.colour = colour;
	}
	getName() {
		return this.name
	}
	setColour(colour) {
		this.colour = colour
	}
	describe() {
		return "I am a " + this.colour + " fruit called " + this.name + ".";
	}
}
let countdown = "";
for (let i = 10; i > 0; i--) {
	countdown += i + ", ";
}
console.log(countdown + "lift off!");
let fruits = [ new Fruit("Apple", "Green"),
			   new Fruit("Strawberry", "Red"),
			   new Fruit("Orange", "Orange"),
			   new Fruit("Banana", "Yellow"),
			   new Fruit("Grape", "Green")];
let fruitCount = fruits.length;
console.log("There are " + fruitCount + " fruits...");
for (let fruit of fruits) {
	if (fruit.getName() == "Grape") {
		fruit.setColour("Purple") ;
	}
	console.log(fruit.describe());
}
console.log("The longest fruit name is " + Fruit.getLongestName() + "!");
