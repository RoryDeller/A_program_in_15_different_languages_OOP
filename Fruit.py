class Fruit:
	longestName = ""
	@classmethod
	def getLongestName(cls):
		return cls.longestName
	def __init__(self, name, colour):
		self.name = name
		if len(name) > len(Fruit.longestName):
			Fruit.longestName = name
		self.colour = colour
	def getName(self):
		return self.name
	def setColour(self, colour):
		self.colour = colour
	def describe(self):
		return "I am a " + self.colour + " fruit called " + self.name + "."
for i in range(10, 0, -1):
	print(str(i) + ", ", end="")
print ("lift off!")
fruits = [ Fruit("Apple", "Green"),
		   Fruit("Strawberry", "Red"),
		   Fruit("Orange", "Orange"),
		   Fruit("Banana", "Yellow"),
		   Fruit("Grape", "Green") ]
fruitCount = len(fruits)
print("There are " + str(fruitCount) + " fruits...")
for fruit in fruits:
	if fruit.getName() == "Grape":
		fruit.setColour("Purple")
	print(fruit.describe())
print("The longest fruit name is " + Fruit.getLongestName() + "!")
