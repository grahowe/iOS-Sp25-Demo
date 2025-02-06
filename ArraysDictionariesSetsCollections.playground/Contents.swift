import Cocoa

//Arrays
var numbers:[Int] = [2, 3, 4]
print(numbers)

var emptyArray = [Int]()
print(emptyArray)

//Print the element at a specified address
var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

//Replace an array element
programmingLanguages[0] = "JavaScript"
print(programmingLanguages[0])
print(programmingLanguages[1])

//Append an array element to the end
var names:[String] = ["Oliver", "Elijah", "James"]
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")

//Insert or append an array element at a given address
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")

print(names.count)

//Sort the elements in alphabetical order (A-Z)
names.sort()
print("After sorting \(names)")

//Reverses names in antialphabetical order (Z-A)
names.reverse()
print("After reversing \(names)")

//Remove an array element
names.remove(at: 2)
print("After removing \(names)")

//Change the order of 2 specified elements
names.swapAt(1, 2)
print("After swapping \(names)")

//Merge 2 arrays together
var oddNumbers = [1, 3, 5, 7]
var evenNumbers = [2, 4, 6, 8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")

print("\n")

//Dictionaries
