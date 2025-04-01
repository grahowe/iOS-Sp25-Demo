//
//  ResultViewController.swift
//  Graham_PracticeExam02
//
//  Created by Graham,Owen M on 4/1/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredActivityOL: UILabel!
    @IBOutlet weak var enteredDurationOL: UILabel!
    @IBOutlet weak var enteredCaloriesOL: UILabel!
    @IBOutlet weak var calculatedCalsOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!
    
    var enteredActivity = ""
    var enteredDuration = ""
    var enteredCals = ""
    var calcCals = ""
    var image = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        enteredActivityOL.text = "Activity Type: \(enteredActivity)"
        enteredDurationOL.text = "Entered Duration: \(enteredDuration)"
        enteredCaloriesOL.text = "Entered Calories: \(enteredCals)"
        calculatedCalsOL.text = "Calculated Total Calories Burned: \(calcCals)"
        
        animateImage(image)
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
