import Cocoa

//ARRAYS
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

//DICTIONARIES
//Dictionaries are UNORDERED collections of key-value pairs and associations
//Dictionaries are the equivalent of maps
//***Keys must be unique values***
//The latest value is assigned to the key, and if you add another value to a key, it will use the latest entered key
//For example, if we set MO to Missouri and later Maryville, Maryville would be the default value

var capitals = ["Arkansas":"Little Rock", "Georgia":"Atlanta"]
print(capitals)

print(capitals.count)

//Output may be different due to how hashing works - this is normal
var numbersDict = [1:"one", 2:"two", 3:"three"]
print(numbersDict)

numbersDict[4] = "Four"
print(numbersDict)

var courses = [44542:"Java", 44560:"Database", 44613:"Data Visualization"]

//Change a key-value's value
print("Before changing \(courses)")
courses[44542] = "JavaScript"
print("After changing \(courses)")

//Print out the value(s) for a key
print(courses[44542])

//Remove a value
courses.removeValue(forKey: 44613)
print(courses)

//Print only the keys in our courses dictionary
for (key,values) in courses{
    print(key)
}

//Print only the values in our courses dictionary
for (key, values) in courses{
    print(values)
}

//Print the keys with their respective values
for (key, values) in courses{
    print("\(key) : \(values)")
}

var hamRadios = ["YaesuHF":"FT891", "YaesuVHF":"FT2200", "Kenwood":"TS660"]
print(hamRadios)

hamRadios["YaesuHF"] = "FT991"
print(hamRadios)

print("\n")

//SETS
//Sets do not allow duplicate outputs and order does not matter
//They are also unordered collections of data
var players : Set<String> = ["David Warner", "Virat Kohli", "Kane Williamson", "Steve Smith"]
print(players.count)

print(players)

print(players.contains("Steve Smith"))

players.insert("Maxwell")
print(players)

var primeNums : Set<Int> = [2, 3, 5, 7, 11]
var numList : Set<Int> = [1, 2, 5, 9]

//Again, you'll see that the output is in no order and changes after every execution
//This, as well, is normal
var unionSet : Set<Int> = primeNums.union(numList)
print(unionSet)

var intersectionSet : Set<Int> = primeNums.intersection(numList)
print(intersectionSet)

var subtractionSet : Set<Int> = primeNums.subtracting(numList)
print(subtractionSet)

var symmDiffSet : Set<Int> = primeNums.symmetricDifference(numList)
print(symmDiffSet)

print(primeNums.isSubset(of: numList))

print("\n")
