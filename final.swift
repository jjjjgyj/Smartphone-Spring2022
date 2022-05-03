import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtFeet: UITextField!
    @IBOutlet weak var txtInches: UITextField!
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Ashish: becuase input is in imperial, I will need to covert weight and height from imperial to metirc
    @IBAction func calculateBMIAction(_ sender: Any) {
        guard let weight = txtWeight.text, !weight.isEmpty else {
            lblBMI.text = "Enter Weight"
            return
        }
        guard let feet = txtFeet.text, !feet.isEmpty else {
            lblBMI.text = "Enter Feet"
            return
        }
        guard let inches = txtInches.text, !inches.isEmpty else {
            lblBMI.text = "Enter Inches"
            return
        }
        
        let weightKg = (weight as NSString).floatValue * 0.453592
        let meter = (feet as NSString).floatValue * 0.3048 + (inches as NSString).floatValue * 0.0254
        let BMI = weightKg / pow(meter, 2)
        
        lblBMI.text = "\(BMI)"

       
    }
    
    
    
}

