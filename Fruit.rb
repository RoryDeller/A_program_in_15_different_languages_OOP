class Fruit

	@@longestName = ""

	def self.getLongestName
		@@longestName
	end
	
	def initialize(theName, theColour)
		@name = theName
		if (theName.length() > @@longestName.length())
			@@longestName = theName
		end
		@colour = theColour
	end
	
	def name
		@name
	end
	
	def colour=(theColour) 
		@colour = theColour
	end
	
	def describe()
		"I am a " + @colour + " fruit called " + @name + "."
	end

end

for i in 10.downto(1)
	print i.to_s + ", "
end
puts "lift off!"	

fruits = [ Fruit.new("Apple", "Green"), 
			Fruit.new("Strawberry", "Red"),
			Fruit.new("Orange", "Orange"),
			Fruit.new("Banana", "Yellow"),
			Fruit.new("Grape", "Green")]

fruitCount = fruits.length

puts "There are " + fruitCount.to_s + " fruits..."

for fruit in fruits
	if (fruit.name == "Grape") 
		fruit.colour = "Purple"
	end 
	puts fruit.describe
end
puts "The longest fruit name is " + Fruit.getLongestName() + "!"
