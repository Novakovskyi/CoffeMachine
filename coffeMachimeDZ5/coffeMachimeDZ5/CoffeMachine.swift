//
//  CoffeMachine.swift
//  coffeMachimeDZ5
//
//  Created by Alexey on 26.04.2021.
//

import UIKit
class CoffeMachine{
    var waterTank = 0
    var coffeeTank = 0
    var milkTank = 0
    var garbageTank = 0
    

    func drinkPrepare(drink: DrinksType ) -> String {
        if coffeeTank >= drink.coffeeNeeded && waterTank >= drink.waterNeeded && milkTank >= drink.milkNeeded && garbageTank < 50 {
            coffeeTank -= drink.coffeeNeeded
            waterTank -= drink.waterNeeded
            milkTank -= drink.milkNeeded
            garbageTank += drink.garbage
            return"Your \(drink), Sir!"
        } else {
            return"Not enough ingredients"
        }
    }


func addWater() -> String{
    waterTank += 500
    return"add water"
}
func addCoffee() -> String{
    coffeeTank += 10
    return"add coffee"
}
func addMilk() -> String{
    milkTank += 400
    return"add milk"
}
func clearGarbage() -> String{
    garbageTank = 0
    return"clear garbage"
}
}
enum DrinksType {
    case espresso, capuchino, latte, tea
    
    
    var coffeeNeeded: Int{
        switch self {
        case .espresso: return  10
        case .capuchino: return 10
        case .latte: return 10
        case .tea: return 0
        
        }
    }
    var waterNeeded:Int{
        switch self {
        case .espresso: return 30
        case .capuchino: return 30
        case .latte: return 30
        case .tea: return 450
        
        }
    }
    var milkNeeded:Int{
        switch self {
        case .espresso: return 0
        case .capuchino: return 170
        case .latte: return 400
        case .tea: return 0
            
        }
    }
    var garbage:Int{
        switch self {
        case .espresso: return 10
        case .capuchino: return 10
        case .latte: return 10
        case .tea: return 10
            
        }
    }
}
    

