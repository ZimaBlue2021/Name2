//
//  ViewController.swift
//  Erick.p PizzaExercise
//
//  Created by Erick P on 8/3/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    enum crust: CaseIterable {
    case  normal, stuffed
        
    }

    enum toppings: CaseIterable {
    case sausage, pepperoni

    }
    @IBAction func normalCrustButton(_ sender: Any) {
        if normalCrustButton()
    }
    print(" one \(toppings.pepperoni) pizza with \(crust.stuffed) crust.

