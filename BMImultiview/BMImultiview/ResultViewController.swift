//
//  ResultViewController.swift
//  BMImultiview
//
//  Created by Graham,Owen M on 3/25/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var heightEnteredFtOL: UILabel!
    @IBOutlet weak var heightEnteredInOL: UILabel!
    @IBOutlet weak var weightEnteredOL: UILabel!
    @IBOutlet weak var bmiResultOL: UILabel!
    @IBOutlet weak var imageViewOL: UIImageView!
    
    var enteredHtFeet = 0
    var enteredHtInch = 0
    var enteredWtLbs = 0
    var bmiResult = 0.0
    var bmiImgName = ""
    var healthMsg = ""
    var categoryMsg = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        heightEnteredFtOL.text = heightEnteredFtOL.text! + String(enteredHtFeet)
        heightEnteredInOL.text = heightEnteredInOL.text! + String(enteredHtInch)
        weightEnteredOL.text = weightEnteredOL.text! + String(enteredWtLbs)
        bmiResultOL.text = bmiResultOL.text! + " " + String(format: "%.2f", bmiResult) + ", which is considered " + String(categoryMsg) + ". Some advice: " + String(healthMsg)
        imageViewOL.image = UIImage(named: bmiImgName)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
