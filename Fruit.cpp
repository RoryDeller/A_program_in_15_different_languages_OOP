#include <iostream>
#include <vector>	
using namespace std;

class Fruit {

	private:
		static string longestName;
		string name;
		string colour;

	public:
		static string getLongestName();
		Fruit(string theName, string theColour);	
		string getName();	
		void setColour(string theColour);	
		string describe();
	
};

string Fruit::longestName = "";

string Fruit::getLongestName() {
	return longestName;
}

Fruit::Fruit(string theName, string theColour) {
	name = theName;
	if (theName.length() > longestName.length()) {
		longestName = theName;
	}
	colour = theColour;
}	

string Fruit::getName() {
	return name;
}

void Fruit::setColour(string theColour) {
	colour = theColour;
}	

string Fruit::describe() {
	return "I am a " + colour + " fruit called " + name + ".";
}

int main()
{
 
	for (int i = 10; i > 0; i--) {			
		cout << i << ", ";
	}
	cout << "lift off!" << endl;

	vector<Fruit> fruits;
	
	fruits.push_back(Fruit("Apple", "Green"));
	fruits.push_back(Fruit("Strawberry", "Red"));
	fruits.push_back(Fruit("Orange", "Orange"));
	fruits.push_back(Fruit("Banana", "Yellow"));
	fruits.push_back(Fruit("Grape", "Green"));
	
	int fruitCount = fruits.size();
	
	cout << "There are " << fruitCount << " fruits..." << endl;
	
	for (auto fruit : fruits) {
		if (fruit.getName() == "Grape") {
			fruit.setColour("Purple");
		}
		cout << fruit.describe() << endl;
	}
	cout << "The longest fruit name is " << Fruit::getLongestName() << "!" << endl;
 
	return 0;
}
