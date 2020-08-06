//
//  ViewController.swift
//  Erick.P(NavigationControllerExercise1st)
//
//  Created by Erick P on 8/5/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            performSegue(withIdentifier: "screen1", sender: self)
    }
}
