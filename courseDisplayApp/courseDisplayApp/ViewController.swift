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
    
    var imageIndex = 0
    
    let courses = [["img01", "44555", "Network Security", "Fall 2024"],
                   ["img02", "44643", "Mobile Computing", "Summer 2023"],
                   ["img03", "44222", "Data Streaming", "Spring 2025"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Update course details (image, course #, title, semester) with the first element in an array
        imageViewOL.image = UIImage(named: courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
        
        //Prev is disabled
        prevBtnOL.isEnabled = false
        
        //Next is enabled
        nextBtnOL.isEnabled = true
        
    }
    
    
    
    @IBAction func prevBtnClicked(_ sender: UIButton) {
    }
    
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        //increment the image
        imageIndex += 1
        
        //update the course details
        imageViewOL.image = UIImage(named: courses[imageIndex][0])
        crsNumOL.text = courses[imageIndex][1]
        crsTitleOL.text = courses[imageIndex][2]
        semOfferedOL.text = courses[imageIndex][3]
        
        //previous button should be enabled
        prevBtnOL.isEnabled = true
        
        //check if the element is at the end of the array, next button should be disabled if so
        if (imageIndex == courses.count - 1){
            nextBtnOL.isEnabled = false
        }
    }
}
