Imports System.Collections.Generic
Module FruitModule
	Class Fruit
		Private Shared longestName As String = ""
		Public Shared Function getLongestName() As String
			Return longestName
		End Function
		Private name As String
		Private colour As String
		Public Sub New(name As String, colour As String)
			Me.name = name
			If name > longestName Then
				longestName = name
			End If
			Me.colour = colour
		End Sub
		Public Function getName() As String
			Return name
		End Function
		Public Sub setColour(colour As String)
			Me.colour = colour
		End Sub
		Public Function describe() As String
			Return "I am a " + colour + " fruit called " + name + "."
		End Function
	End Class
	Sub Main()
		For i As Integer = 10 to 1 Step -1
			Console.Write(Str(i).Trim() + ", ")
		Next
		Console.WriteLine("lift off!")
		Dim fruits As New List(Of Fruit)
		fruits.Add(New Fruit("Apple", "Green"))
		fruits.Add(New Fruit("Strawberry", "Red"))
		fruits.Add(New Fruit("Orange", "Orange"))
		fruits.Add(New Fruit("Banana", "Yellow"))
		fruits.Add(New Fruit("Grape", "Green"))
		Dim fruitCount As Integer = fruits.Count
		Console.WriteLine("There are " + Str(fruitCount).Trim() + " fruits...")
		For Each fruit As Fruit In fruits
			If fruit.getName() = "Grape" Then
				fruit.setColour("Purple")
			End If
			Console.WriteLine(fruit.describe())
		Next
		Console.WriteLine("The longest fruit name is " + Fruit.getLongestName() + "!")
	End Sub
End Module
