//
//  ViewController.swift
//  InitialsApp
//
//  Created by Graham,Owen M on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnameOL: UITextField!
    @IBOutlet weak var lastnameOL: UITextField!
    @IBOutlet weak var textOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitClicked(_ sender: Any) {
        // Get text input from First and last name boxes
        var fName = firstnameOL.text!
        var lName = lastnameOL.text!
        
        // Process formatting for initials: Get first letter of fName, first letter of lName separated by .
        // Note that these should also be uppercase
        // Pay attention here as this is string manipulation
        // In these vars, we grab the very first character and make it uppercased
        // .prefix means that we return a subsequence up to a specified length, containing the initial elements of the collection
        // In this case, we grabbed the very first element from the strings
        var firstInitial = fName.prefix(1).uppercased()
        var lastInitial = lName.prefix(1).uppercased()
        
        // Print to the output label
        textOL.text = "Your initials are: \(firstInitial).\(lastInitial)."
        
    }
    
}

