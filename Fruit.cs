using System;
using System.Collections.Generic;
class Fruit {
	private static string longestName = "";
	public static string getLongestName() {
		return longestName;
	}
	public string name { get; set; }
	public string colour { get; set; }
	public Fruit(string name, string colour) {
		this.name = name;
		if (name.Length > longestName.Length) {
			longestName = name;
		}
		this.colour = colour;
	}
	public string describe() {
		return "I am a " + colour + " fruit called " + name + ".";
	}
	static void Main() {			
		Console.Write("Count down from what number? ");
		var start = Console.ReadLine();
		for (int i = Int32.Parse(start); i > 0; i--) {
			Console.Write(i + ", ");
		}
		Console.WriteLine("lift off!");
		var fruits = new List<Fruit> {
			new Fruit("Apple", "Green"),
			new Fruit("Strawberry", "Red"),
			new Fruit("Orange", "Orange"),
			new Fruit("Banana", "Yellow"),
			new Fruit("Grape", "Green")
		};
		int fruitCount = fruits.Count;
		Console.WriteLine("There are " + fruitCount + " fruits...");
		foreach (var fruit in fruits) {
			if (fruit.name == "Grape") {
				fruit.colour = "Purple";
			}
			Console.WriteLine(fruit.describe());
		}
		Console.WriteLine("The longest fruit name is " + Fruit.getLongestName() + "!");
	}
}
