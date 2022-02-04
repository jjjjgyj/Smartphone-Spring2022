//
//  ViewController.swift
//  Classic Table View
//
//  Created by Yunjia Gao on 2/3/22.
//

import UIKit

/*
 1. add a table view to the story board
 2. add a table view cell to the table view
 3. create identifier for table view cell and call it "cell"
 4. create oulet of tableview to the code call the table view as "tblView"
 5. add protocols UITableViewDelegate, UITableViewDataSource to the class
 6. add functions for table view numberOfRowsInSection and cellForRowAt
 7. in view did load, add tblView.delege = self and tblView.dataSource = self
 8. create an array for data values
 9. return array.count in  numOfRowsInSection function
 10. fill the cellForRowAr function
 
 */

class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    let arr = ["mark", "bill", "aaron", "jason", "tom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

}

