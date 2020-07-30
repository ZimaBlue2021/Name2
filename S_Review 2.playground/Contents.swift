/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit

/*:

- Variables

Create a variable called name and initialize it to the name of your favorite actor, singer, or sports celebrity */
var name :String = "Brendon Urie"
/*:
- Displaying on the screen

Display the contents of name on the screen

 Change the value of name to your name*/
var name2 :String = "erick"
print(name2)

/*:
- Constants
 
Display the contents of name

Create a constant (let instead of var) called language and initialize it to "Swift"

Display the contents of the language constant on screen

Create 3 different constants and initialize them to hold integers of your choice. Name the constants a, b, and c

Create 3 constants that are doubles (they have decimal points) Initialize them with values of your choice. Name the constants d, e, and f*/
let A :Int = 1
let B :Int = 2
let C :Int = 3
let D :Int = Int((0.5))
let E :Int = Int((1.5))
let F :Int = Int((2.5))
print(A,"",B,"",C)
/*:
- Operators

Create an assortment of statements using the constants that you created that will perform the following actions - then display the equation and the result on the screen.*/
var add = A + B
var sub = A - C
var mul = B * B
var div = A / B
print(add + C)
print(div / B)
print(mul * C)
print(sub - B)

/*:
- Add two constants
 
-                print("a + b = " ) + (a + b)

Addition sample with at least 4 constants

Subtraction sample

Division sample

Multiplication sample*/
let six = 6
let three = 3
print("6 + 3 =", six + three)
/*:
- If Statements
 
Use the following constants to solve the problems :*/
 
let temperature = 90
let raining = true
let time = "Morning"

/*: Write a statement that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant

Check the raining constant and tell the user if they need an umbrella or not

Check the time constant and if it is morning tell the user to go to school, if it is afternoon tell the user to go home, and if it is night tell the user to go to bed*/
print("today's temperature is \(temperature), recommened ")
if temperature < 80 {
print("wearing shorts today")
} else {
print("wearing jeans today")
}
if raining == true {
print("There will be rain today, you'll need an umberella")
} else {
print("There will be no rain today so no umberella needed")
}
if time == "Morning" {
    print("Get ready for school")
} else {
    print("Head home")
}


/*:
- Loops

Using a for loop print the numbers from 1 to 10 on screen

Using  a while loop print the numbers from 10 to 1 on screen*/

for num in 1...100 {
print(num)
}

/*:
- Collections

Create an array that holds five strings

Create a tuple that holds two strings

Using a loop, step through one of the collections you created and print all of the items to the screen*/
var instruments: [String] = ["Piano", "Guitar", "Drums", "Bass", "saxophone", "accordion"]
print(instruments)



/*:
- Functions

Create a function that takes two doubles, multiplies them, and returns the result.

Call the function, save the result in the variable "answer". Pass it two of the constants you  creataed (a, b, c, d, e, or f)*/
var num1: (Int) = 9
var num2: (Int) = 4
func multiTwoNums(num1: Double, num2: Double) -> Double{
    return num1 * num2
}
var answer = multiTwoNums(num1: Double(num1), num2: Double(num2))
print(answer)

/*:
- Closures

Create a closure that subtracts one number from another and prints the results, use the closure. You may pass it constants or numbers*/
var subttact = {
    (num1: Int, num2: Int) in
    print(num1 - num2)
    }
subttact(9,4)

/*:
- Enums
 
Create an enum that holds the first name of everyone in your group

Create a switch statement based on the enum that will display the birthday of the
selected person

Test it by using your own name*/
enum groupName: String, CaseIterable{
    case Name = "Daniel"
    case name2 = "Fe"
    case name3 = "Fatara"
    case name4 = "Erick"
}
print("Happy Birtday, \(name2)!")

/*:
- Structure
 
Create a structure called Name that holds a first, middle, and last name and prints them on screen in one line with spaces between them

Create an instance of the Name structure, pass it your name, and use the instance you created to print your  name to the screen*/
struct fullName {
    var fName:String
    var MName: String
    var LName: String

    init(strFirst: String, strMiddle: String, strLast: String) {
        self.fName = strFirst
        self.MName = strMiddle
        self.LName = strLast
}
    
}
    var myStructName = fullName(strFirst: "Amado", strMiddle: "c", strLast: "Fuentes")
    print("hello my name is \(myStructName.fName) \(myStructName.MName) \(myStructName.LName)")





/*:
- Class
 
Create a class called Coffee that accepts size, caffineated,  cream,  and sugar then prints the order on screen

Create an instance of the class

Use the instance of the class and call the function*/
class Coffee {
var theCupSize: cupSize
    var isCaffineated: Bool
    var hasCream: Bool
    var hasSugar: Bool

    enum cupSize: String, CaseIterable{
case small = "S"
case med = "M"
case large = "L"
case extraL = "XL"
}
    init(Size: cupSize, isCaffineated: Bool,hasCream: Bool, hasSugar:Bool) {
        self.theCupSize = Size
        self.isCaffineated = isCaffineated
        self.hasCream = hasCream
        self.hasSugar = hasSugar
}
    func printAll(){
        print("The size I ordered is a \(theCupSize.rawValue)")
        if isCaffineated {
print("It's caffineated")
        } else {
            print("it's not caffineated")
        }
            if hasCream {
            print("It has cream")
                    } else {
                        print("it doesnt have cream")
                    }
            if hasSugar {
            print("It has sugar")
                    } else {
                        print("It doesnt have sugar")
                    }
    }
    var mycoffe = Coffee(Size: .small, isCaffineated: true, hasCream: true, hasSugar: true)

}
        
        
        
        
        
        

