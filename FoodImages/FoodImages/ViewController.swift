//
//  ViewController.swift
//  FoodImages
//
//  Created by Yunjia Gao on 2/4/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let images = ["Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8", "Food9", "Food10"]
    let foodNames = ["Salad", "Sushi", "Curry", "Pasta", "Pizza", "Meat Loaf", "Fried Chicken", "Fried Rice", "Hotpot", "Pad Thai"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = foodNames[indexPath.row]
        return cell
    }
    

}

