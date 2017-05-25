Fruit = {
	longestName = "",
	getLongestName = function()
		return Fruit.longestName
	end,
	new = function(name, colour)
		local self = {}
		self.name = name
		if string.len(name) > string.len(Fruit.longestName) then
			Fruit.longestName = name
		end
		self.colour = colour
		self.getName = function()
			return self.name
		end
		self.setColour = function(colour)
			self.colour = colour
		end
		self.describe = function()
			return "I am a " .. self.colour .. " fruit called " .. self.name .. "."
		end
		return self
	end,
}
io.write("Count down from what number? ")
start = io.stdin:read()
for i=tonumber(start),1,-1 do
	io.write(i .. ", " )
end
print ("lift off!")
fruits = { Fruit.new("Apple", "Green"),
			 Fruit.new("Strawberry", "Red"),
			 Fruit.new("Orange", "Orange"),
			 Fruit.new("Banana", "Yellow"),
			 Fruit.new("Grape", "Green") }
fruitCount = #fruits
print("There are " .. fruitCount .. " fruits...")
for _, fruit in ipairs(fruits) do
	if fruit.getName() == "Grape" then
		fruit.setColour("Purple")
	end
	print (fruit.describe())
end
print("The longest fruit name is " .. Fruit.getLongestName() .. "!")
