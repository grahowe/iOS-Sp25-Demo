//
//  ViewController.swift
//  climateAnimationsApp
//
//  Created by Graham,Owen M on 3/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var outputOL: UILabel!
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        // Read the temp and assign it to a variable
        var temp = inputOL.text!
        
        //Convert the temp string into an Int or Double
        var temperature = Double(temp)!
        
        // Logic to check if the temp is hot or cold
        if (temperature > 60.0){
            //The temp is hot, otherwise it's cold
            // Assign the result to the outputOL
            UIView.animate(withDuration: 0.5, animations: {
                // Fade out
                self.imageViewOL.alpha = 0.0
            })
            
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
                self.imageViewOL.alpha = 1.0 //Fade in
                self.imageViewOL.image = UIImage(named: "hot")
            })
            
            outputOL.text = "It is hot outside 🥵"
        }
        
        else{
            // What if it's cold out?
            // Use the same logic but with different outputs
            UIView.animate(withDuration: 0.5, animations: {
                self.imageViewOL.alpha = 0.0
            })
            UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.2, animations: {
                self.imageViewOL.alpha = 1.0
                self.imageViewOL.image = UIImage(named: "cold")
            })
            
            outputOL.text = "It is cold outside 🥶"
        }
    }
}

