//
//  ResultViewController.swift
//  GrahamTravelBooking
//
//  Created by Owen Graham on 4/17/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageOL: UIImageView!
    @IBOutlet weak var nameOL: UILabel!
    @IBOutlet weak var guestNumOL: UILabel!
    @IBOutlet weak var classTypeOL: UILabel!
    @IBOutlet weak var totalCostOL: UILabel!
    @IBOutlet weak var resultClassOL: UILabel!
    
    var imageType = ""
    var printName = ""
    var printGuestNum = ""
    var printClassType = ""
    var printTotal = ""
    var printResult = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageOL.image = UIImage(named: imageType)
        nameOL.text = "Traveler Name: " + printName
        guestNumOL.text = "Number of Guests: " + printGuestNum
        classTypeOL.text = "Class Type: " + printClassType
        totalCostOL.text = "Total Cost: $" + String(format: printTotal, "%.2f")
        resultClassOL.text = printResult
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
