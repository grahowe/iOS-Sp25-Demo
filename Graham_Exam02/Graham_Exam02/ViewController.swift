//
//  ViewController.swift
//  Graham_Exam02
//
//  Created by Graham,Owen M on 4/3/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var goalTypeOL: UITextField!
    @IBOutlet weak var targetAmtOL: UITextField!
    @IBOutlet weak var interestOL: UITextField!
    @IBOutlet weak var timeOL: UITextField!
    
    @IBOutlet weak var calcBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlySavingsPayment = 0.00
    
    var image = ""
    var goal = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calcBtn.isEnabled = false
        resetBtn.isEnabled = false
    }

    @IBAction func calcSavingsBtnPressed(_ sender: Any) {
        totalMonths = Double(timeOL.text!)! * 12
        monthlyInterestRate = Double(Double(interestOL.text!)! / 100) / 12
        monthlySavingsPayment = Double(targetAmtOL.text!)! / ((pow(1 + monthlyInterestRate, totalMonths) - 1) / monthlyInterestRate)
        
        //Image logic
        if goalTypeOL.text! == "car" {
            image = "car"
            goal = "car"
        }
        
        else if goalTypeOL.text! == "vacation" {
            image = "vacation"
            goal = "vacation"
        }
        
        else if goalTypeOL.text == "home" {
            image = "home"
            goal = "home"
        }
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        goalTypeOL.text = ""
        targetAmtOL.text = ""
        interestOL.text = ""
        timeOL.text = ""
        
        calcBtn.isEnabled = false
        resetBtn.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! ResultViewController
            
            destination.goalType = goal
            destination.targetAmt = targetAmtOL.text!
            destination.interest = interestOL.text!
            destination.savings = String(format:"%.2f", monthlySavingsPayment)
            
            destination.imgPic = image
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        goalTypeOL.text = ""
        targetAmtOL.text = ""
        interestOL.text = ""
        timeOL.text = ""
        
    }
    
    @IBAction func inputTextChanged(_ sender: UITextField){
        if let text = sender.text, !text.isEmpty {
            calcBtn.isEnabled = true
            resetBtn.isEnabled = true
        }
        
        else {
            calcBtn.isEnabled = false
            resetBtn.isEnabled = false
        }
    }
}

