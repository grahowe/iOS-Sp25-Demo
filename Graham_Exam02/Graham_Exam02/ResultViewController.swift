//
//  ResultViewController.swift
//  Graham_Exam02
//
//  Created by Graham,Owen M on 4/3/25.
//

import UIKit

class ResultViewController: UIViewController {
    

    @IBOutlet weak var enteredGoalOL: UILabel!
    @IBOutlet weak var enteredTargetOL: UILabel!
    @IBOutlet weak var enteredInterestOL: UILabel!
    @IBOutlet weak var calcSavingsOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!

    var goalType = ""
    var targetAmt = ""
    var interest = ""
    var savings = ""
    var imgPic = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enteredGoalOL.text! = "Entered Goal Type: \(goalType)"
        enteredTargetOL.text! = "Entered Target Amount: \(targetAmt)"
        enteredInterestOL.text! = "Entered Interest Rate: \(interest)"
        calcSavingsOL.text! = "Calculated Savings: \(savings)"
        
        animateImage(imgPic)
        
        // Do any additional setup after loading the view.
    }
    
    func animateImage(_ imageName: String){
        UIView.animate(withDuration: 1, animations: {self.imageOL.alpha = 0.0})
        
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageOL.alpha = 1.0
            self.imageOL.image = UIImage(named: imageName)
        })
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
