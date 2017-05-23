import scala.collection.mutable.ListBuffer
class Fruit(private var name: String, private var colour: String) {
	if (name.length() > Fruit.longestName.length()) {
		Fruit.longestName = name
	}
	def getName(): String = name
	def setColour(colour: String): Unit = {
		colour = colour
	}
	def describe(): String = "I am a " + colour + " fruit called " + name + "."
}
object Fruit {
	private var longestName = ""
	def getLongestName(): String = longestName
	def main(args: Array[String]): Unit = {
		for (i <- 10 to 1 by -1) {
			print(i + ", ")
		}
		println("lift off!")
		val fruits = new ListBuffer[Fruit]()
		fruits += ( new Fruit("Apple", "Green"),
					new Fruit("Strawberry", "Red"),
					new Fruit("Orange", "Orange"),
					new Fruit("Banana", "Yellow"),
					new Fruit("Grape", "Green"))
		val fruitCount: Int = fruits.size
		println("There are " + fruitCount + " fruits...")
		for (fruit <- fruits) {
			if (fruit.getName() == "Grape") {
				fruit.setColour("Purple")
			}
			println(fruit.describe())
		}
		println("The longest fruit name is " + Fruit.getLongestName() + "!");
	}
}
