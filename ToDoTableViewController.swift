//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Bossman on 7/27/20.
//  Copyright © 2020 CB-Kwk. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

var listOfToDo : [ToDoClass] = []
   
    
    override func viewDidLoad() {
      super.viewDidLoad()

   


        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false; do {
    
    //}

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    //}

   
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

func tableView(_tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    
    // #warning Incomplete implementation, return the number of rows
        
    }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]
    
    if eachToDo.important {
      cell.textLabel?.text = "❗️" + eachToDo.description
    } else {
      cell.textLabel?.text = eachToDo.description
    }

    
    return cell
        


}
        // Configure the cell...

       
    
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    



}

}
