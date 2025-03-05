//
//  ViewController.swift
//  Graham_Exam01
//
//  Created by Graham,Owen M on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pm25OL: UITextField!
    
    
    @IBOutlet weak var pm10OL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var descOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkBtnClicked(_ sender: UIButton) {
        
        //Set our outlets as variables
        guard let pm25 = Double(pm25OL.text!)
        else{
            descOL.text = "Please enter the input values or numeric values for PM2.5 and PM10"
            imageOL.image = UIImage(named: "none")
            return
        }
        
        guard let pm10 = Double(pm10OL.text!)
        else{
            descOL.text = "Please enter the input values or numeric values for PM2.5 and PM10"
            imageOL.image = UIImage(named: "none")
            return
        }
        
        //Make the equation
        let aqc = (pm25 + pm10) / 2
        
        //Error checking
        //We need to ensure that we are getting numerical values and not string values
        //If the PM2.5, PM10, or both boxes are not filled, we need to ask the user to fill in the input completely
        
            
            
            
        //Case check to retrieve the quality of air
        if aqc < 50{
            imageOL.image = UIImage(named: "Best")
            descOL.text="The AQC value is \(aqc).\nThis air quality is considered to be best quality air."
        }
        
        else if aqc >= 50 && aqc < 100{
            imageOL.image = UIImage(named: "Moderate")
            descOL.text="The AQC value is \(aqc).\nThis is considered to be moderate quality air."
        }
        
        else if aqc >= 100{
            imageOL.image = UIImage(named: "Poor")
            descOL.text="The AQC value is \(aqc).\nThis is considered to be poor quality air."
        }
        
        
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        //If the reset button is clicked, we need to clear everything
        pm25OL.text = ""
        pm10OL.text = ""
        imageOL.image = UIImage(named: "none")
        descOL.text = "Label"
    }
    
}

