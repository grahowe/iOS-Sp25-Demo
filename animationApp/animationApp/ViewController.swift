//
//  ViewController.swift
//  animationApp
//
//  Created by Graham,Owen M on 3/18/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var ImageViewOL: UIImageView!
    
    @IBOutlet weak var HappyOL: UIButton!
    
    @IBOutlet weak var SadOL: UIButton!
    
    @IBOutlet weak var AngryOL: UIButton!
    
    @IBOutlet weak var ShakeMeOL: UIButton!
    
    @IBOutlet weak var ShowOL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func HappyBtnClicked(_ sender: Any) {
        animateImage("happy")
    }
    
    @IBAction func SadBtnClicked(_ sender: Any) {
        animateImage("sad")
    }
    
    @IBAction func AngryBtnClicked(_ sender: Any) {
        animateImage("angry")
    }
    
    @IBAction func ShakeMeBtnClicked(_ sender: Any) {
        var w = ImageViewOL.frame.width
        w += 40
        var h = ImageViewOL.frame.height
        h += 40
        
        var x = ImageViewOL.frame.origin.x - 20
        var y = ImageViewOL.frame.origin.y - 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.ImageViewOL.frame = largerFrame
        })
    }
    
    @IBAction func ShowBtnClicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.ImageViewOL.center.x = self.view.center.x
            
            self.SadOL.center.x = self.view.center.x
            
            self.AngryOL.center.x = self.view.center.x
            
            self.HappyOL.center.x = self.view.center.x
            
            self.ShakeMeOL.center.x = self.view.center.x
        })
        
        ShowOL.isEnabled = false;
    }
    
    func animateImage(_ imageName: String){
        //Hide or opaque out the image
        UIView.animate(withDuration: 1, animations: {self.ImageViewOL.alpha = 0.0})
        
        //Image should appear with given duration
        UIView.animate(withDuration: 1, delay: 0.2, animations: {
            self.ImageViewOL.alpha = 1.0
            self.ImageViewOL.image = UIImage(named: imageName)
        })
        
        
        
    }
    
    
    
    
}

