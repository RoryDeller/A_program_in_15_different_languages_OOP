#!/bin/bash
echo
echo 1. Java
javac Fruit.java && java Fruit && rm *.class
echo
echo 2. C++
g++ -std=c++0x Fruit.cpp -o Fruit && ./Fruit && rm Fruit
echo
echo 3. Python
python3 Fruit.py
echo 
echo 4. C#
mcs Fruit.cs && mono Fruit.exe && rm Fruit.exe
echo
echo 5. JavaScript
node Fruit.js
echo
echo 6. PHP
php Fruit.php
echo
echo 7. Perl
perl6 Fruit.p6
echo
echo 8. Ruby
ruby Fruit.rb
echo
echo 9. Swift
swift Fruit.swift
echo
echo 10. Go
go run Fruit.go
echo
echo 11. Scala
scalac Fruit.scala && scala Fruit && rm *.class
echo
echo 12. Groovy
groovy Fruit.groovy
echo
echo 13. CoffeeScript
coffee Fruit.coffee
echo
echo 14. VB.NET
vbnc Fruit.vb > /dev/null && mono Fruit.exe && rm Fruit.exe
echo
echo 15. Lua
lua Fruit.lua
echo
