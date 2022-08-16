//
//  CompleteToDoViewController.swift
//  ToDoListEmily&Ian
//
//  Created by Scholar on 8/15/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousToDoTVC = TableViewController1()
    var selectedToDo = ToDoClass()

    @IBOutlet weak var toDoDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        toDoDisplay.text = selectedToDo.description
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
    }
    
}
