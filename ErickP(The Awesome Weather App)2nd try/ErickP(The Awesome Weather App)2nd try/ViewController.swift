//
//  ViewController.swift
//  ErickP(The Awesome Weather App)2nd try
//
//  Created by Erick P on 8/13/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = NSURL(string: "https://api.darksky.net/forecast/ae58c5fa7285b492f6a553d200018d9e/42.5917,88.4334") {
            if let data = NSData(contentsOf: url as URL ) {
                do {
                    let parsed = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments) as! [String:AnyObject]
                
                    let newDict = parsed
               
print(newDict["currently"]!["summary"] as Any)
print(newDict["currently"]!["temperature"] as Any)
print(newDict["currently"]!["dewPoint"] as Any)

self.currentTemp.text = "\(newDict["currently"]!["temperature"]!!)"
self.currentSummary.text = "\(newDict["currently"]!["summary"]!!)"
self.currentDewpoint.text = "\(newDict["currently"]!["dewPoint"]!!)"
}

    catch let error as NSError{
print("A JSON parsithng error occurred, here are the details:\n \(error)")
            }
        }
    }
}

    @IBOutlet  var currentTemp: UILabel!
    
    @IBOutlet  var currentSummary: UILabel!
    
    @IBOutlet  var currentDewpoint: UILabel!
    
    @IBOutlet weak var weatherImage: UIImageView!
    

}
