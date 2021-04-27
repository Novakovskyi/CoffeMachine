//
//  ViewController.swift
//  coffeMachimeDZ5
//
//  Created by Alexey on 26.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var coffeMachine = CoffeMachine()
   
    
    @IBOutlet weak var lableCoffeeMachine: UILabel!
 



    @IBAction func makeEspresso(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.drinkPrepare(drink: .espresso)
        
    }
    @IBAction func makeCapuchino(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.drinkPrepare(drink: .capuchino)
    }
    @IBAction func makeLatte(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.drinkPrepare(drink: .latte)
    }
    
    @IBAction func makeTea(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.drinkPrepare(drink: .tea)
    }
    
    
    @IBAction func addCoffee(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.addCoffee()
        
    }
    
    @IBAction func addWater(_ sender: UIButton) {
        lableCoffeeMachine.text = 
        coffeMachine.addWater()

    }
    
    @IBAction func addMilk(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.addMilk()
    }
    
    @IBAction func clearGarbage(_ sender: UIButton) {
        lableCoffeeMachine.text = coffeMachine.clearGarbage()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

