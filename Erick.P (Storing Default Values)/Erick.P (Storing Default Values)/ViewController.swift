//
//  ViewController.swift
//  Erick.P (Storing Default Values)
//
//  Created by Erick P on 8/10/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySaveButton(_ sender: Any) {
        
        UserDefaults.standard.set(myText.text, forKey: "Text" )
        UserDefaults.standard.set(mySwitch.isOn, forKey: "switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
}
        
    @IBAction func Load(_ sender: Any) {
    mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        myText.text = UserDefaults.standard.string(forKey: "Text")
        
    }
    
    @IBAction func Delete(_ sender: Any) {
    mySwitch.isOn = true
    mySlider.value = 0.5
        myText.text = ""
        
    }
    
    
    @IBOutlet var myText: UITextField!
    
    
    @IBOutlet var mySlider: UISlider!
    
    
    @IBOutlet var mySwitch: UISwitch!
    
    
    override func viewDidLoad() {
       mySwitch.isOn = true
       mySlider.value = 0.5
        myText.text = "";        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

