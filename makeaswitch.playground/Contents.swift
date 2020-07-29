import UIKit

enum Meat: CaseIterable {
    case Salami, Pastrami
}

enum condiments: CaseIterable {
case mayo, mustard
    
}
enum veggies: CaseIterable {
case  lettuce, tomato, avocado
    
}

enum bread: CaseIterable {
case sourdough, whiteBread, wheatBread

}

print("I'll take a \(Meat.Pastrami) and \(Meat.Salami) on \(bread.sourdough) with \(condiments.mayo), \(condiments.mustard) with also \(veggies.lettuce), \(veggies.tomato), and \(veggies.avocado)")











