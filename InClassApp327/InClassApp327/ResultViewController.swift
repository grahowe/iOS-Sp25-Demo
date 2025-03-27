//
//  ResultViewController.swift
//  InClassApp327
//
//  Created by Graham,Owen M on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredPrinOL: UILabel!
    @IBOutlet weak var enteredRateOL: UILabel!
    @IBOutlet weak var enteredTimeOL: UILabel!
    
    @IBOutlet weak var simpIntAmtOL: UILabel!
    @IBOutlet weak var imageOL: UIImageView!
    
    var principal = ""
    var rate = ""
    var time = ""
    var interest = ""
    var level = ""
    var imagePic = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        enteredPrinOL.text = "Entered Principal Amount: \(principal)"
        enteredRateOL.text = "Entered Rate: \(rate)"
        enteredTimeOL.text = "Entered Time: \(time)"
        simpIntAmtOL.text = "Total Simple Interest: \(interest). This is considered a \(level) amount of interest."
        
        animateImage(imagePic)
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
