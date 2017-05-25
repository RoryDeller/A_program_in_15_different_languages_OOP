prompt = require('syncprompt')
longestName = ""
class Fruit
	@getLongestName: () ->
		return longestName
	constructor: (name, colour) ->
		@name = name
		if @name.length > longestName.length
			longestName = @name
		@colour = colour
	getName: () ->
		return @.name
	setColour: (colour) ->
		@colour = colour
	describe: () ->
		return "I am a " + @colour + " fruit called " + @name + "."
countdown = ""
start = prompt('Count down from what number? ')
for i in [start .. 1]
	countdown += i + ", "
console.log countdown + "lift off!"
fruits = [ new Fruit("Apple", "Green"),
			new Fruit("Strawberry", "Red"),
			new Fruit("Orange", "Orange"),
			new Fruit("Banana", "Yellow"),
			new Fruit("Grape", "Green")]
fruitCount = fruits.length
console.log "There are " + fruitCount + " fruits..."
for fruit in fruits
	if (fruit.getName() == "Grape")
		fruit.setColour("Purple")
	console.log fruit.describe()
console.log "The longest fruit name is " + Fruit.getLongestName() + "!"
