//
//  ViewController.swift
//  Graham_PracticeExam02
//
//  Created by Graham,Owen M on 4/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityOL: UITextField!
    @IBOutlet weak var totalDurationOL: UITextField!
    @IBOutlet weak var calsBurnedOL: UITextField!
    @IBOutlet weak var calcCalsBtn: UIButton!
    
    var activity = ""
    var duration = ""
    var calsBurned = ""
    var totalCalsBurned = 0.0
    
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcCaloriesBtnPressed(_ sender: UIButton) {
        activity = activityOL.text!
        duration = totalDurationOL.text!
        calsBurned = calsBurnedOL.text!
        
        totalCalsBurned = Double(duration)! * Double(calsBurned)!
        
        if activityOL.text == "swimming" || activityOL.text == "Swimming" {
            imageName = "swimming"
        }
        
        else if activityOL.text == "running" || activityOL.text == "Running" {
            imageName = "running"
        }
        
        else if activityOL.text == "cycling" || activityOL.text == "Cycling" {
            imageName = "cycling"
        }
        
        else {
            imageName = "default"
        }
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        activityOL.text = ""
        totalDurationOL.text = ""
        calsBurnedOL.text = ""
        totalCalsBurned = 0.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "calcCalories" {
            var destination = segue.destination as! ResultViewController
            
            destination.enteredActivity = activityOL.text!
            destination.enteredDuration = totalDurationOL.text!
            destination.enteredCals = calsBurnedOL.text!
            
            destination.calcCals = String(totalCalsBurned)
            
            destination.image = imageName
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        activityOL.text = ""
        totalDurationOL.text = ""
        calsBurnedOL.text = ""
    }
    
    
}

