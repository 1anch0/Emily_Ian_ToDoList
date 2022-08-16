//
//  AddToDoViewController.swift
//  ToDoListEmily&Ian
//
//  Created by Scholar on 8/15/22.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    
    var previousToDoTVC = TableViewController1()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
//        let dataFromCoreData = accessToCoreData.persistentContainer.viewContest
        let dataFromCoreData =
        accessToCoreData.persistentContainer.viewContext
        
        let newToDo = ToDoCD(context: dataFromCoreData)
        
//        newToDo.descriptionInCD = descriptionInput.text
//        newToDo.importantCD = switchInput.isOn
        newToDo.descriptionCD = descriptionInput.text
        newToDo.importantInCD = switchInput.isOn
        
        accessToCoreData.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
//        let newToDo = ToDoClass()
//
//        if let checkForInput = descriptionInput.text {
//        newToDo.description = checkForInput
//        newToDo.important = switchInput.isOn
//        }
//
//        previousToDoTVC.listOfToDo.append(newToDo)
//        previousToDoTVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
   
//

    @IBOutlet weak var descriptionInput: UITextField!

    @IBOutlet weak var switchInput: UISwitch!
}
