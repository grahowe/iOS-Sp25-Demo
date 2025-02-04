import Cocoa

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

fact.count
fact += ", it has a better memory management"
dev.append(" by Apple")
author.lowercased()
author.uppercased()

//numbers[] length of ARRAY numbers is 5 (0 to 4)
//access second element: numbers[1].. using suqare brackets and the index #
//In Swift, elements are characters in String accessed by type 'Index'

//Access the very first element in the string Index
author[author.startIndex]

//Access the very last element in the string Index
author[author.index(before: author.endIndex)]

//We can't do this because we can't add a type Index to an Int
//author[author.startIndex + 1]

dev[dev.startIndex]
dev[dev.index(before: dev.endIndex)]

//Here is how we add or subtract using offset
author[author.index(after: author.startIndex)]

//String is out of bounds here, but why?
//author[author.endIndex]
//Unlike Java and Python, strings are not indexed by integer values
//The endIndex property is the position after the last character in a String

//Should return a " " after Swift in author var
author[author.index(author.startIndex, offsetBy: 5)]

//Should return a "t" from Lattner
author[author.index(author.endIndex, offsetBy: -5)]

//Return "m" from management
fact[fact.index(fact.endIndex, offsetBy: -4)]

//Now you try!
var hobby = "Amateur radio can bridge the gap where cellular phones and the internet cannot"
print(hobby.count)
print(hobby[hobby.index(hobby.startIndex, offsetBy: 10)])

var name = "Owen Graham"
print(name.count)
print(name[name.index(name.endIndex, offsetBy: -4)])
print(name[name.index(name.startIndex, offsetBy: 3)])

//STRINGS02
var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if (clothes.hasPrefix("Socks")){
    print("The first item in clothes is socks")
}
else{
    print("Socks is not the first item")
}

print(foodItems.split(separator: ","))

if clothes.contains(","){
    print("Clothes contains more than one item")
}
else{
    print("Clothes contain only one item")
}

print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex, offsetBy: -7)])

clothes.remove(at: clothes.firstIndex(of: "T")!)
clothes.remove(at: clothes.firstIndex(of: "-")!)

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)
print("\(shoppingList), \(clothes)")

//STRINGS03
var course = "44643-Mobile Computing-iOS"
print(course.count)

//Display only course number
print(course[course.startIndex..<course.index(course.endIndex, offsetBy: -21)])

//Display only the course title
print(course[course.index(course.startIndex, offsetBy: 6)..<course.index(course.endIndex, offsetBy: 0)])

//Display the first word of the title
print(course[course.index(course.startIndex, offsetBy: 6)..<course.index(course.startIndex, offsetBy: 12)])
