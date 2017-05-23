package main
import "fmt"

type Fruit struct {
	name string
	colour string
}

var longestName = ""

func newFruit(name string, colour string) Fruit {
	var fruit Fruit;
	fruit.name = name
	if (len(name) > len(longestName)) {
		longestName = name
	}
	fruit.colour = colour
	return fruit
}

func (f Fruit) getName() string {
	return f.name
}

func (f *Fruit) setColour(colour string) {
	f.colour = colour	
}

func (f Fruit) describe() string {
	return "I am a " + f.colour + " fruit called " + f.name + "."
}

func main() {
	
	for i := 10; i > 0; i-- {
		 fmt.Print(fmt.Sprintf("%d, ", i))
	}
	fmt.Println("lift off!")

	fruits := []Fruit{ newFruit("Apple", "Green"),
					   newFruit("Strawberry", "Red"),
					   newFruit("Orange", "Orange"),
					   newFruit("Banana", "Yellow"),
					   newFruit("Grape", "Green")}
	
	fruitCount := len(fruits)
	
	fmt.Println(fmt.Sprintf("There are %d fruits...", fruitCount))
	
	for _, fruit := range fruits {
		if (fruit.getName() == "Grape") {
			fruit.setColour("Purple")
		}
		fmt.Println(fruit.describe())
	}

	fmt.Println("The longest fruit name is " + longestName + "!")

}
