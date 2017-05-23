class Fruit:

	longestName = ""

	@classmethod
	def getLongestName(cls):
		return cls.longestName
	
	def __init__(self, theName, theColour):
		self.name = theName
		if len(theName) > len(Fruit.longestName):
			Fruit.longestName = theName
		self.colour = theColour	
	
	def getName(self):
		return self.name
		
	def setColour(self, theColour):
		self.colour = theColour	
		
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

print("The longest fruit name is " +  Fruit.getLongestName() + "!")
