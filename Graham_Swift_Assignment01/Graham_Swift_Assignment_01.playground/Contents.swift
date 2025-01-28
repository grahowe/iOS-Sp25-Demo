import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
// Explain why Swift is considered a modern and user-friendly programming language.
// Also, describe type safety and type inference in Swift with examples.
print("Swift was released for the first time in 2014.")
print("Swift features clean syntax which makes writing and troubleshooting code easy.")
print("Type safety refers to the prevention of mixing types, such as String and Int. Type inference can also work if a variable's type is not explicitly defined")
var age: Int = 25;
let num = 1;
print("----------------------")
// End of question 1


// 2. Declare a constant 'pi' of type Double with the value 3.14. Write code to calculate
// the area of a circle with a radius of 10.0 units using the formula: Area = pi * radius * radius.
// Print the calculated area as shown in the sample output below:
// "The area of the circle with radius 10.0 is **** square units."
var pi: Double = 3.14;
print("The area of the circle with radius 10.0 is \(10.0 * 10.0 * pi) square units")
print("----------------------")
// End of question 2


// 3. Declare a variable with a value of 212°F (boiling point of water) in Fahrenheit, convert it to Celsius,
// and round it to one decimal place. Print the result in this format:
// "Temperature: 212°F is equivalent to ****°C."
var tempf: Int = 212;
var tempfDbl: Double = Double(tempf);
print("Temperature: \(tempf)°F is equivalent to \((tempfDbl - 32) * 5/9)°C")
print("----------------------")
// End of question 3


// 4. Write three statements about why Swift is a great language for beginners and developers.
// Display the first two statements on one line and the third statement on the next line using print statements.
print("Swift is easy to learn because it has clean syntax, an intuitive design,")
print("and built-in safety features that help prevent syntax errors.")
print("----------------------")
// End of question 4


// 5. Display the following using a single print statement:
// "Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms.
// It offers modern features, concise syntax, and exceptional performance that developers love."
print("Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms. \nIt offers modern features, concise syntax, and exceptional performance that developers love.")
print("----------------------")
// End of question 5


// 6. Declare two variables, num1 and num2, and assign them any two 3-digit numbers.
// Write code to calculate their product and determine how many digits the product contains.
// Print the result in this format:
// "The product of <num1> and <num2> is ****, and it has **** digits."
var num1: Int = 123
var num2: Int = 456
print("The product of \(num1) and \(num2) is \(num1 * num2), and it has \((num1 * num2 % 10)) digits")
print("----------------------")
// End of question 6


// 7. Create a variable with the value "Swift programming is fun!".
// Count the total number of characters excluding spaces and print them as individual characters separated by "+".
// For example: "S+w+i+f+t+p+r+o+g+r+a+m+m+i+n+g+i+s+f+u+n"
var str: String = "Swift programming is fun!"
print(str, separator: "+")
print("----------------------")
// End of question 7


// 8. A car is traveling at a constant velocity of 20 m/s for 12 seconds.
//Calculate the total distance traveled during this time period using the formula:
//Distance = velocity × time
//Print the result in this format:
//"The car traveled a distance of **** meters."
var velocity: Int = 20
var time: Int = 12
print("The car traveled a distance of \(velocity * time) meters")
print("----------------------")
// End of question 8





