import UIKit



func numbers(numOne: Int, numTwo: Int ) -> Int {
return numOne * numTwo
}
var multiplyNum: (Int, Int ) -> Int = { (numOne, numTwo) in
    return numOne * numTwo }
print(multiplyNum(5, 10))
























