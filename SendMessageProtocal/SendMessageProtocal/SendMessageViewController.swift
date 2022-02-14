//
//  SendMessageViewController.swift
//  SendMessageProtocal
//
//  Created by Yunjia Gao on 2/13/22.
//

import UIKit

class SendMessageViewController: UIViewController {

    @IBOutlet weak var txtMessage: UITextField!
    var sendMessageDelegate: SendMessageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
         
        sendMessageDelegate?.sendMessageDelegate(message: txtMessage.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
}
