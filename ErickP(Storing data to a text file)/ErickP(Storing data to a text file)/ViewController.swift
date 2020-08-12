//
//  ViewController.swift
//  ErickP(Storing data to a text file)
//
//  Created by Erick P on 8/11/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func writeMyText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            try TypeTextHere.text?.write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Error writing file")
        }
    }
    
    
    @IBAction func ReadMyText(_ sender: Any) {
        let fm = FileManager.default
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.text")
        do {
            let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            displayTextHere.text = fileContent
        } catch{
            print("Error reading file")
    }
}
    
    @IBOutlet weak var TypeTextHere: UITextField!
    
    
    
    @IBOutlet weak var displayTextHere: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TypeTextHere.text = "Write here!"
        displayTextHere.text = ""
    }


}

