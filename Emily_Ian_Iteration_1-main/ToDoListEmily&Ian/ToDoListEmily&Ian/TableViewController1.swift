//
//  TableViewController1.swift
//  ToDoListEmily&Ian
//
//  Created by Scholar on 8/15/22.
//

import UIKit

class TableViewController1: UITableViewController {

    var listOfToDo : [ToDoClass] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()

    }
    func createToDo() -> [ToDoClass] {

    let swiftToDo = ToDoClass()
    swiftToDo.description = "Learn Swift"
    swiftToDo.important = true
    let dogToDo = ToDoClass()
    dogToDo.description = "Walk the Dog"
    // important is set to false by default
    return [swiftToDo, dogToDo]
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo[indexPath.row]

        if eachToDo.important {
        cell.textLabel?.text = "❗️" + eachToDo.description
        } else {
        cell.textLabel?.text = eachToDo.description
        }
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue,
    sender: Any?) {
    if let nextAddToDoVC = segue.destination as?
    AddToDoViewController {

    nextAddToDoVC.previousToDoTVC = self
    }
        if let nextCompletedToDoVC = segue.destination as?
            CompleteToDoViewController {
            if let choosenToDo = sender as? ToDoClass {
                nextCompletedToDoVC.selectedToDo = choosenToDo
                nextCompletedToDoVC.previousToDoTVC = self
            }
        }
    }
    override func tableView(_ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath) {
    // this gives us a single ToDo
    let eachToDo = listOfToDo[indexPath.row]

    performSegue(withIdentifier: "moveToCompletedToDoVC",
    sender: eachToDo)
    }
    
    
}
