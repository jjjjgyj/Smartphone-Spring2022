//
//  ViewController.swift
//  SegueExample
//
//  Created by Yunjia Gao on 2/6/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "sequeToSecondVC", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sequeToSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.welcomeStr = "Welcome \(txtFirstName.text!), \(txtLastName.text!)"
            
            
            
        }
    }

}

