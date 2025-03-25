//
//  ViewController.swift
//  BMImultiview
//
//  Created by Graham,Owen M on 3/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var htFtOL: UITextField!
    @IBOutlet weak var htInOL: UITextField!
    @IBOutlet weak var wtLbsOL: UITextField!
    
    var feet = 0
    var inches = 0
    var lbs = 0
    var bmi = 0.0
    var category = ""
    var imgName = ""
    var result = ""
    var healthAdvice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBtnClicked(_ sender: Any) {
        // Read input and convert to new format
        feet = Int(htFtOL.text!)!
        inches = Int(htInOL.text!)!
        lbs = Int(Double(wtLbsOL.text!)!)
        
        // Convert
        var height = feet * 12 + inches
        bmi = 703 * (Double(lbs) / Double(height * height))
        
        if bmi < 18.5 {
            category = "Underweight"
            imgName = "underWeight"
            healthAdvice = "Eat more protein and healthy fats"
        }
        
        else if bmi >= 18.5 && bmi < 25 {
            category = "Normal"
            imgName = "normal"
            healthAdvice = "Maintain a balanced diet"
        }
        
        else if bmi >= 25 && bmi < 30 {
            category = "Overweight"
            imgName = "overWeight"
            healthAdvice = "Prioritize weight loss and maintain a healthy lifestyle"
        }
        
        else {
            category = "Obese"
            imgName = "obese"
            healthAdvice = "Seek professional medical advice"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! ResultViewController
            
            destination.enteredHtFeet = feet
            destination.enteredHtInch = inches
            destination.enteredWtLbs = lbs
            destination.bmiResult = bmi
            destination.categoryMsg = category
            destination.healthMsg = healthAdvice
            destination.bmiImgName = imgName
        }
        
    }
    
}

