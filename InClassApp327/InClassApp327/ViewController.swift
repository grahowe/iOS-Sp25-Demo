//
//  ViewController.swift
//  InClassApp327
//
//  Created by Graham,Owen M on 3/27/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var principalOL: UITextField!
    @IBOutlet weak var rateOfIntOL: UITextField!
    @IBOutlet weak var timeOL: UITextField!
    
    var simpInt = 0.00
    var category = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBtnClicked(_ sender: Any) {
        var principal = Double(principalOL.text!)!
        var interest = Double(rateOfIntOL.text!)!
        var time = Int(timeOL.text!)!
        
        simpInt = Double((Int(principal * interest) * time) / 100)
        
        if simpInt < 100{
            category = "Low"
            image = "low-icon"
            
        }
        else if simpInt >= 100 && simpInt < 500{
            category = "Medium"
            image = "medium-icon"
        }
        else{
            category = "High"
            image = "high-icon"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.principal = principalOL.text!
            destination.rate = rateOfIntOL.text!
            destination.time = timeOL.text!
            
            destination.interest = String(format:"%.2f", simpInt)
            destination.level = category
            destination.imagePic = image
        }
    }
}

