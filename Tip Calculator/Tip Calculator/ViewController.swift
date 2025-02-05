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
    }
    
    @IBAction func ResetBtnPressed(_ sender: UIButton) {
    }
}

