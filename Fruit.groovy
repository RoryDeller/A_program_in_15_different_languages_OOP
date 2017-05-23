class Fruit {
	static private def longestName = ""
	static def getLongestName() {
		return longestName
	}
	String name
	String colour
	Fruit(name, colour) {
		this.name = name
		if (name.length() > longestName.length()) {
			longestName = name
		}
		this.colour = colour
	}
	def describe() {
		return "I am a " + colour + " fruit called " + name + "."
	}
	public static void main(String[] args) {
		for (def i in 10 .. 1) {
			print i + ", "
		}
		println "lift off!"
		def fruits = [ new Fruit("Apple", "Green"),
					new Fruit("Strawberry", "Red"),
					new Fruit("Orange", "Orange"),
					new Fruit("Banana", "Yellow"),
					new Fruit("Grape", "Green") ]
		def fruitCount = fruits.size()
		println "There are " + fruitCount + " fruits..."
		for (fruit in fruits) {
			if (fruit.getName() == "Grape") {
				fruit.setColour("Purple")
			}
			println fruit.describe()
		}
		println "The longest fruit name is " + Fruit.getLongestName() + "!"
	}
}
