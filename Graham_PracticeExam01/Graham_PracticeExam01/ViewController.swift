//
//  ViewController.swift
//  Graham_PracticeExam01
//
//  Created by Owen Graham on 2/20/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightFeetOL: UITextField!
    @IBOutlet weak var heightInchOL: UITextField!
    @IBOutlet weak var weightLbsOL: UITextField!
    @IBOutlet weak var infoTextOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func bmiBtnClicked(_ sender: UIButton) {
        let heightFt = Double(heightFeetOL.text!)!
        let heightIn = Double(heightInchOL.text!)!
        let weight = Double(weightLbsOL.text!)!
        
        let totalHeight = Double((heightFt * 12) + heightIn)
        
        let bmiIdx = (703 * weight) / (totalHeight * totalHeight)
        let roundedBMI = (bmiIdx * 10).rounded()/10

        
        if bmiIdx <= 18.5{
            let message = "Your Body Mass Index is \(roundedBMI). \nThis is considered UNDERWEIGHT. \nHealth Tip: Eat more protein and healthy fats."
            infoTextOL.text = message
            imageOL.image = UIImage(named: "underWeight")
        }
        
        else if bmiIdx > 18.5 && bmiIdx <= 24.9{
            let message = "Your Body Mass Index is \(roundedBMI). \nThis is considered HEALTHY. \nHealth Tip: Excellent! Maintain a healthy lifestyle."
            infoTextOL.text = message
            imageOL.image = UIImage(named: "normal")
        }
        
        else if bmiIdx > 24.9 && bmiIdx <= 29.9{
            let message = "Your Body Mass Index is \(roundedBMI). \nThis is considered OVERWEIGHT. \nHealth Tip: Lose weight by maintaining a balanced diet and increasing physical activity."
            infoTextOL.text = message
            imageOL.image = UIImage(named: "overWeight")
        }
        
        else{
            let message = "Your Body Mass Index is \(roundedBMI). \nThis is considered OBESE. \nHealth Tip: Consult a doctor for personalized advice."
            infoTextOL.text = message
            imageOL.image = UIImage(named: "obese")
        }

        
    }
    
}

