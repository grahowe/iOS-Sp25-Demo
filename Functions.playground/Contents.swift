func greetUser(){
    print("Welcome User!")
}

greetUser()


func favoriteProgram(name:String)->String {
    var name = "My favorite programming language is \(name)"
    return name
}
print(favoriteProgram(name: "Python"))


func addNumbers(number1:Int, number2:Int)->Int {
    return number1+number2
}
print("The sum of the numbers is \(addNumbers(number1: 10, number2: 20))")


func sumAndAvg(_ numbers:Double...)->(sum:Double,avg:Double,diff:Double) {
    var total:Double = 0
    var totaldiff:Double = 0
    var avg:Double
    for number in numbers {

        total += number
        totaldiff -= number
    }
    avg=total/Double(numbers.count)
    return (total,avg,totaldiff)
}

let result = sumAndAvg(1, 20.5, 3, 4, 10.9)
print("Sum = \(result.sum)")
print("Average = \(result.avg)")
print("Difference = \(result.diff)")
