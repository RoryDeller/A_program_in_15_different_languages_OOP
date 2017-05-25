import Foundation
class Fruit {
	static private var longestName: String = ""
	static func getLongestName() -> String {
        return longestName
    }
	private var name: String
	private var colour: String
	public init(name: String, colour: String) {
		self.name = name
		if(name.characters.count > Fruit.longestName.characters.count) {
			Fruit.longestName = name
		}
		self.colour = colour
	}
	public func getName() -> String {
		return self.name
	}
	public func setColour(colour: String) {
		self.colour = colour
	}
	public func describe() -> String {
		return ("I am a " + self.colour + " fruit called " + self.name + ".")
	}
}
print("Count down from what number? ", terminator: "")
let start = Int(readLine()!)!;
for i in (1...start).reversed() {
	print(String(i) + ", ", terminator : "")
}
print("lift off!")
var fruits = [Fruit]()
fruits.append(Fruit(name: "Apple", colour: "Green"))
fruits.append(Fruit(name: "Strawberry", colour: "Red"))
fruits.append(Fruit(name: "Orange", colour: "Orange"))
fruits.append(Fruit(name: "Banana", colour: "Yellow"))
fruits.append(Fruit(name: "Grape", colour: "Green"))
var fruitCount = fruits.count
print("There are " + String(fruitCount) + " fruits...")
for fruit in fruits {
	if (fruit.getName() == "Grape") {
		fruit.setColour(colour: "Purple")
	}
	print(fruit.describe())
}
print("The longest fruit name is " + Fruit.getLongestName() + "!")
