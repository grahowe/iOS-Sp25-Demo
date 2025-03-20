//
//  resultViewController.swift
//  multipleViewControllerApp
//
//  Created by Graham,Owen M on 3/20/25.
//
// To drag-and-drop, click on ViewController, Identity Inspector, type in your created VC name

import UIKit

class resultViewController: UIViewController {
    
    @IBOutlet weak var enteredAmtOL: UILabel!
    @IBOutlet weak var enteredDiscOL: UILabel!
    @IBOutlet weak var priceAfterOL: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfter = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        enteredAmtOL.text = "Entered Amount: \(amount)"
        enteredDiscOL.text = "Entered Discount Rate: \(discRate)"
        priceAfterOL.text = "Price After Discount: \(priceAfter)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
