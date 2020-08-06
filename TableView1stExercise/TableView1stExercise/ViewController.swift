//
//  ViewController.swift
//  TableView1stExercise
//
//  Created by Erick P on 8/4/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let console = ["Xbox", "PS4", "Nintendo switch", "PC"]
    
     override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        
       }
    
     func tableView (_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
           return console.count
       }
       func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
           cell?.textLabel?.text = console[indexPath.row]
           return cell!
    }
}
    









