//
//  DocumentViewController.swift
//  test
//
//  Created by Yunjia Gao on 2/4/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let images = ["Seattle1", "Seattle2", "Seattle3", "Seattle4", "Seattle5", "Seattle6", "Seattle7", "Seattle8", "Seattle9", "Seattle10"]
    
    let imageNames = ["Image 1", "Image 2", "Image 3", "Image 4", "Image 5", "Image 6", "Image 7", "Image 8", "Image 9", "Image 10"]
    
    @IBOutlet weak var tblViewCell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblViewCell.delegate = self
        tblViewCell.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = imageNames[indexPath.row]
        return cell
    }
    

}
