//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Owen Graham on 2/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameOL: UITextField!
    @IBOutlet weak var BillAmtOL: UITextField!
    @IBOutlet weak var TipOL: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SubmitBtnPressed(_ sender: UIButton) {
        let name = String(NameOL.text!)
        let billAmt = Double(BillAmtOL.text!)!
        let tipIP = Double(TipOL.text!)!
        let tipIPNum = Double(tipIP)
        let tip = Double(billAmt * (tipIPNum/100))
        let totalBill = Double(tip + billAmt)
        
        nameLabel.text = "Name: " + name
        billAmountLabel.text = "Bill Amount: $" + String(format: "%.2f", billAmt)
        tipAmountLabel.text = "Tip Amount: $" + String(format: "%.2f", tip)
        totalAmountLabel.text = "Total Amount: $" + String(format: "%.2f", totalBill)
    }
    
    @IBAction func ResetBtnPressed(_ sender: UIButton) {
        
        NameOL.text = ""
        BillAmtOL.text = ""
        TipOL.text = ""
        
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
    }
}

