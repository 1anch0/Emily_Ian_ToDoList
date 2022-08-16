//
//  CompleteToDoViewController.swift
//  ToDoListEmily&Ian
//
//  Created by Scholar on 8/15/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousToDoTVC = TableViewController1()
    var selectedToDo : ToDoCD?

    @IBOutlet weak var toDoDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        toDoDisplay.text = selectedToDo?.descriptionCD
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
//        guard let accessToCoreData =
//                UIApplication.shared.delegate as? AppDelegate else {
//            return }
//    }
//
//    let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
//
//        if let toDo2Delete = selectedToDo {
//        dataFromCoreData.delete(toDo2Delete)
//        navigationController?.popViewController (animated: true)
//        }
//}
        guard let accessToCoreData =
        UIApplication.shared.delegate as? AppDelegate else {
        return
        }
        let dataFromCoreData =
        accessToCoreData.persistentContainer.viewContext
        if let toDo2Delete = selectedToDo {
        dataFromCoreData.delete(toDo2Delete)
        navigationController?.popViewController(animated:
        true)
        }
    }
}
