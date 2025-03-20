//
//  ViewController.swift
//  multipleViewControllerApp
//
//  Created by Graham,Owen M on 3/20/25.
//
// Editor -> Embed in -> Navigation Controller
// Once you've created and named the segue in the identifier, we have to create a respective class for each view
// Right click on folder -> New File from Template -> Cocoa Touch -> UIViewController selection

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOL: UITextField!
    @IBOutlet weak var discountOL: UITextField!
    
    // Declare a global variable to send to second ViewController
    var resultAfterDiscount = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calcBtnClicked(_ sender: UIButton) {
        // Read user input and assign to double
        var amount = Double(amountOL.text!)!
        
        // Read discount rate and assign to double
        var discount = Double(discountOL.text!)!
        
        // Calculate the result
        // Multiply the amount by the percentage
        resultAfterDiscount = Double(amount * (1 - discount/100))
    }
    
    // THIS IS AN IMPORTANT PIECE OF CODE!!!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // Create transition variable
        var transition = segue.identifier
        if transition == "resultSegue" {
            // Create the destination as ResultVC
            var destination = segue.destination as! resultViewController
            
            destination.amount = amountOL.text!
            destination.discRate = discountOL.text!
            
            // If needed, here is how you round to 2 decimals
            destination.priceAfter = String(format:"%.2f", resultAfterDiscount)
        }
    }
}

