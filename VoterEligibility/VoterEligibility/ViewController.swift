//
//  ViewController.swift
//  VoterEligibility
//
//  Created by Owen Graham on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var age = textInput.text
        
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        if inputText >= 18 {
            text.print("Eligible to Vote!")
        }
        else {
            text.print("Sorry, you cannot vote")
        }
    }
}

