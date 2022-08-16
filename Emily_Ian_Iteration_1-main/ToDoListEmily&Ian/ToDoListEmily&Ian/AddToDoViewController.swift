//
//  AddToDoViewController.swift
//  ToDoListEmily&Ian
//
//  Created by Scholar on 8/15/22.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousToDoTVC = TableViewController1()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let newToDo = ToDoClass()

        if let checkForInput = descriptionInput.text {
        newToDo.description = checkForInput
        newToDo.important = switchInput.isOn
        }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var switchInput: UISwitch!
}
