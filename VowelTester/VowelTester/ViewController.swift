//
//  ViewController.swift
//  VowelTester
//
//  Created by Graham,Owen M on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOL: UITextField!
    @IBOutlet weak var labelOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: UIButton) {
        //read the text input
        var enteredText = textOL.text!
        //check for vowels
        if (enteredText.contains("a") || enteredText.contains("e")){
            //displlay on label
            labelOL.text = "The entered text contains vowel(s)."
        }
        else {
            labelOL.text = "The entered text does not contain vowels."
        }
    }
    
}

