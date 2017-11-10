//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unamed]")
    }
}

let namedMeat = Food(name: "Bacon")
let mysteryMeat = Food()
print(mysteryMeat.name)

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let a = RecipeIngredient()
print(a.name)
print(a.quantity)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? "?" : "!"
        return output
    }
}


var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}
