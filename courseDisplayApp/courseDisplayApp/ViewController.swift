//
//  ViewController.swift
//  courseDisplayApp
//
//  Created by Graham,Owen M on 2/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var crsNumOL: UILabel!
    @IBOutlet weak var crsTitleOL: UILabel!
    @IBOutlet weak var semOfferedOL: UILabel!
    @IBOutlet weak var prevBtnOL: UIButton!
    @IBOutlet weak var nextBtnOL: UIButton!
    
    
    
    let courses = [["img01", "44555", "Network Security", "Fall 2024"],
                   ["img02", "44643", "Mobile Computing", "Summer 2023"],
                   ["img03", "44222", "Data Streaming", "Spring 2025"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Update course details (image, course #, title, semester) with the first element in an array
        imageViewOL.image = UIImage(named: courses[0][0])
        crsNumOL.text = courses[0][1]
        crsTitleOL.text = courses[0][2]
        semOfferedOL.text = courses[0][3]
        
        //Prev is disabled
        prevBtnOL.isEnabled = false
        
        //Next is enabled
        nextBtnOL.isEnabled = true
        
    }
    
    
    
    @IBAction func prevBtnClicked(_ sender: UIButton) {
    }
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
    }
    
}
