//
//  ViewController.swift
//  Graham_CalculatorApp
//
//  Created by Owen Graham on 2/24/25.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var resultOutlet: UILabel!
    
    //Store the current and previous numbers
    var currentNum: String = "0"
    var prevNum: Double = 0
    
    //Store the operator
    var operation: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the initial value to zero
        resultOutlet.text = "0"
    }
    
    @IBAction func btnAllClear(_ sender: UIButton) {
        //If the AC button is pressed, we want to clear EVERYTHING
        currentNum = "0"
        prevNum = 0
        operation = ""
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        //If only the C button is pressed, we only want to clear the last number we entered
        currentNum = "0"
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnSignChange(_ sender: UIButton) {
        //If the plus/minus key is pressed
        if let num = Double(currentNum) {
            
            //Multiply by -1 to toggle the sign
            currentNum = String(-num)
            
            //Print out the negated number
            resultOutlet.text = currentNum
        }
    }
    
    @IBAction func btnDivide(_ sender: UIButton) {
        if let number = Double(currentNum){
            prevNum = number
            operation = "/"
            currentNum = "0"
        }
    }
    
    @IBAction func btnMultiply(_ sender: UIButton) {
        if let number = Double(currentNum){
            prevNum = number
            operation = "*"
            currentNum = "0"
        }
    }
    
    @IBAction func btnMinus(_ sender: UIButton) {
        if let number = Double(currentNum){
            prevNum = number
            operation = "-"
            currentNum = "0"
        }
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        if let number = Double(currentNum){
            prevNum = number
            operation = "+"
            currentNum = "0"
        }
    }
    
    @IBAction func btnEquals(_ sender: UIButton) {
        if let number = Double(currentNum) {
            var result: Double = 0
            
            // Check the operation first and calculate the result
            if operation == "*" {
                result = prevNum * number
            }
            
            else if operation == "/" {
                if number == 0 {
                    resultOutlet.text = "NaN" // Handle division by zero
                }
                else {
                    result = prevNum / number
                }
            }
            
            else if operation == "-" {
                result = prevNum - number
            }
            
            else if operation == "+" {
                result = prevNum + number
            }
            
            else if operation == "%" {
                if number == 0 { //Zero case
                    resultOutlet.text = "NaN"
                }
                else {
                    result = fmod(prevNum, number)
                }
            }
            
            //If the result ends in .0, we need to remove the trailing 0
            if result == Double(Int(result)){
                resultOutlet.text = String(Int(result))
            }
            else {
                resultOutlet.text = String(result)
            }
            currentNum = String(result)
        }
    }


    
    @IBAction func btnMod(_ sender: UIButton) {
        if let number = Double(currentNum){
            prevNum = number
            operation = "%"
            currentNum = "0"
        }
        
    }
    
    @IBAction func btnDecimal(_ sender: UIButton) {
        //If the number does not contain a decimal, add it in
        if !currentNum.contains("."){
            currentNum += "."
            resultOutlet.text = currentNum
        }
    }
    
    @IBAction func btnZero(_ sender: UIButton) {
        if currentNum == "0"{
            currentNum = "0"
        }
        else{
            currentNum += "0"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnOne(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "1"
        }
        else{
            currentNum += "1"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "2"
        }
        else{
            currentNum += "2"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "3"
        }
        else{
            currentNum += "3"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnFour(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "4"
        }
        else{
            currentNum += "4"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnFive(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "5"
        }
        else{
            currentNum += "5"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnSix(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "6"
        }
        else{
            currentNum += "6"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnSeven(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "7"
        }
        else{
            currentNum += "7"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnEight(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "8"
        }
        else{
            currentNum += "8"
        }
        
        resultOutlet.text = currentNum
    }
    
    @IBAction func btnNine(_ sender: UIButton) {
        if currentNum == "0" {
            currentNum = "9"
        }
        else{
            currentNum += "9"
        }
        
        resultOutlet.text = currentNum
    }


}

