//
//  ViewController.swift
//  GrahamTravelBooking
//
//  Created by Owen Graham on 4/17/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var travelerNameOL: UITextField!
    @IBOutlet weak var noOfTravelersOL: UITextField!
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    var economyClass = 150.00
    var luxuryClass = 250.00
    var finalAmt = 0.00
    var name = ""
    var number = ""
    var type = ""
    var imgName = ""
    var message = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func bookNowBtn(_ sender: Any) {
        
        name = travelerNameOL.text!
        number = noOfTravelersOL.text!
        
        if cabinTypeOL.text == "Luxury" {
            finalAmt = Double(number)! * luxuryClass
            type = "Luxury"
            message = "Enjoy your Luxury stay!"
            imgName = "luxury"
        }
        else if cabinTypeOL.text == "Economy" {
            finalAmt = Double(number)! * economyClass
            type = "Economy"
            message = "Enjoy your Economy stay!"
            imgName = "economy"
        }
        else {
            finalAmt = 0.00
            type = "Error"
            message = "Please enter a valid class."
            imgName = "error"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            var destination = segue.destination as! ResultViewController
            
            destination.imageType = imgName
            destination.printName = name
            destination.printGuestNum = number
            destination.printClassType = type
            destination.printTotal = String(finalAmt)
            destination.printResult = message
            
        }
    }
}

