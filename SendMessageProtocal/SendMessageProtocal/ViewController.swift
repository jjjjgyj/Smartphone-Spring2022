//
//  ViewController.swift
//  SendMessageProtocal
//
//  Created by Yunjia Gao on 2/13/22.
//

import UIKit

class ViewController: UIViewController, SendMessageDelegate {


    @IBAction func getMessageAction(_ sender: Any) {
        performSegue(withIdentifier: "segueSendMessage", sender: self)
        
    }
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSendMessage"{
            let secondVC = segue.destination as! SendMessageViewController
            secondVC.sendMessageDelegate = self
        }
        
    }

    func sendMessageDelegate(message: String) {
        lblWelcome.text = message
    }
    

}

