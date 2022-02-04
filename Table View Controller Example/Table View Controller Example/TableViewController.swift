//
//  TableViewController.swift
//  Table View Controller Example
//
//  Created by Yunjia Gao on 2/3/22.
//

import UIKit

/*
    1. remove view controller from storyboard and remove the code
    2. add a tableviewcontroller to the storyboard and add "cell" as a reusable identifier
    3. make the tableview as intitial view controller
    4. add tableviewcontroller code file and map ui and code file
    5. remove boiler plate code and have 2 functions numberOfRowsInSection and cellForRowAt
    6. add array and reeturn arr.count in numberOfRowsInSection
    7. return the cell (configure cell to use the array)
 
 */

class TableViewController: UITableViewController {

    let arr = ["mark", "bill", "tom", "peter", "john"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        
        
        return cell
    }
    
}
