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
		Fruit(string name, string colour);
		string getName();
		void setColour(string colour);
		string describe();
};
string Fruit::longestName = "";
string Fruit::getLongestName() {
	return longestName;
}
Fruit::Fruit(string name, string colour) {
	this -> name = name;
	if (name.length() > longestName.length()) {
		longestName = name;
	}
	this -> colour = colour;
}
string Fruit::getName() {
	return this -> name;
}
void Fruit::setColour(string colour) {
	this -> colour = colour;
}
string Fruit::describe() {
	return "I am a " + colour + " fruit called " + name + ".";
}
int main()
{
	cout << "Count down from what number? ";
	int start;
	cin >> start;
	for (int i = start; i > 0; i--) {
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
