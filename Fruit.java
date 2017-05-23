import java.util.ArrayList;
public class Fruit {
	private static String longestName = "";
	public static String getLongestName() {
		return longestName;
	}
	private String name;
	private String colour;
	public Fruit(String name, String colour) {
		this.name = name;
		if (name.length() > longestName.length()) {
			longestName = name;
		}
		this.colour = colour;
	}
	public String getName() {
		return name;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public String describe() {
		return "I am a " + colour + " fruit called " + name + ".";
	}
	public static void main(String[] args) {
		for (int i = 10; i > 0; i--) {
			System.out.print(i + ", ");
		}
		System.out.println("lift off!");
		ArrayList<Fruit> fruits = new ArrayList<>();
		fruits.add(new Fruit("Apple", "Green"));
		fruits.add(new Fruit("Strawberry", "Red"));
		fruits.add(new Fruit("Orange", "Orange"));
		fruits.add(new Fruit("Banana", "Yellow"));
		fruits.add(new Fruit("Grape", "Green"));
		int fruitCount = fruits.size();
		System.out.println("There are " + fruitCount + " fruits...");
		for (Fruit fruit : fruits) {
			if (fruit.getName() == "Grape") {
				fruit.setColour("Purple");
			}
			System.out.println(fruit.describe());
		}
		System.out.println("The longest fruit name is " + Fruit.getLongestName() + "!");
	}
}
