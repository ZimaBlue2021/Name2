//
//  ViewController.swift
//  ErickP(StoringStructuredData) try2
//
//  Created by Erick P on 8/12/20.
//  Copyright © 2020 Erick P. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController {

    var dataManager: NSManagedObjectContext!
    var listArray = [NSManagedObject]()
    
    @IBAction func saveRecordButton(_ sender: Any) {
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: "Item", into: dataManager)
        newEntity.setValue(enterWhaleDescription.text!, forKey: "about")
        
        do{
            try self.dataManager.save()
            listArray.append(newEntity)
        }catch{
            print("Error saving data")
        }
        displayDataHere.text?.removeAll()
        enterWhaleDescription.text?.removeAll()
        fetchData()
    }

    
    
    @IBAction func deleteRecordButton(_ sender: Any) {
        let deleteItem = enterWhaleDescription.text!
        for item in listArray {
            if item.value(forKey: "about") as! String == deleteItem {
                dataManager.delete(item)
    }
    do{
        try self.dataManager.save()
    }catch{
            print("Error deleting data")
            }
            displayDataHere.text?.removeAll()
            enterWhaleDescription.text?.removeAll()
            fetchData()
        }
    }
    @IBOutlet var enterWhaleDescription: UITextField!
    
    
    
    @IBOutlet var displayDataHere: UITextField!
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        dataManager = appDelegate.persistentContainer.viewContext
        displayDataHere.text?.removeAll()
        fetchData()
    }
    
    func fetchData() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Item")
        do{
            let result = try dataManager.fetch(fetchRequest)
        listArray = result as! [NSManagedObject]
            for item in listArray {
                
                let product = item.value(forKey: "about") as! String
                displayDataHere.text! += product
                
            }
        }catch{
            print("Error retrieving data")
        }
    }
}

