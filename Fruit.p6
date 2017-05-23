class Fruit {

	my $longestName = "";
	has $.name;
	has $.colour;

	method getLongestName() {
		return $longestName;
	}

	method new($name, $colour) {
		if (chars($name) > chars($longestName)) {
			$longestName = $name;
		}
		self.bless(name => $name, colour => $colour);		
	}
	
	method getName() {
		return $!name;
	}
	
	method setColour($colour) {
		$!colour = $colour;
	}
	
	method describe() {
		return "I am a " ~ $!colour ~ " fruit called " ~ $!name ~ ".";
	}
	
}

loop (my $i = 10; $i > 0; $i--) {		
	print($i.Str ~ ", ");
}
say("lift off!");

my @fruits = Fruit.new("Apple", "Green"),
			 Fruit.new("Strawberry", "Red"),
			 Fruit.new("Orange", "Orange"),
			 Fruit.new("Banana", "Yellow"),
			 Fruit.new("Grape", "Green");

my $fruitCount = +@fruits;

say("There are " ~ $fruitCount ~ " fruits...");

for @fruits -> $fruit {
	if ($fruit.getName() eq "Grape") {
		$fruit.setColour("Purple");
	}
	say($fruit.describe())
}

say("The longest fruit name is " ~ Fruit.getLongestName() ~ "!")
