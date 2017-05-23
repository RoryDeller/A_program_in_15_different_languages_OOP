<?php

class Fruit {

	private static $longestName = "";

	static function getLongestName() {
		return Fruit::$longestName;
	}

	private $name;
	private $colour;
	
	function __construct($name, $colour) {
		$this->name = $name;
		if ($name > Fruit::$longestName) {
			Fruit::$longestName = $name;
		}
		$this->colour = $colour;
	}
	
	function getName() {		
		return $this->name;
	}
	
	function setColour($colour) {
		$this->colour = $colour;
	}
	
	function describe() {
		return "I am a " . $this->colour . " fruit called " . $this->name . ".";
	}

}

for ($i = 10; $i > 0; $i--) { 
	echo $i . ", ";
}
echo "lift off!\n";

$fruits = [new Fruit("Apple", "Green"),
		   new Fruit("Strawberry", "Red"),
		   new Fruit("Orange", "Orange"),
		   new Fruit("Banana", "Yellow"),
		   new Fruit("Grape", "Green")];

$fruitCount = count($fruits);

echo "There are " . $fruitCount . " fruits...\n";

foreach ($fruits as $fruit) {
	if ($fruit->getName() == "Grape") {	
		$fruit->setColour("Purple");
	}
	echo $fruit->describe()."\n";
}

echo "The longest fruit name is " . Fruit::getLongestName() . "!\n";

?>
