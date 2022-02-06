//
//  ViewController.swift
//  TableViewXibFile
//
//  Created by Yunjia Gao on 2/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    let images = ["Seattle1", "Seattle2", "Seattle3","Seattle4", "Seattle5", "Seattle6","Seattle7", "Seattle8", "Seattle9", "Seattle10"]
    let imageLabel = ["Seattle1", "Seattle2", "Seattle3","Seattle4", "Seattle5", "Seattle6","Seattle7", "Seattle8", "Seattle9", "Seattle10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblImage.text = imageLabel[indexPath.row]
        
        return cell
    }
    
}

