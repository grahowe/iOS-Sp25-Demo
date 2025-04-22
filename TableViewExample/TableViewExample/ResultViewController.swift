//
//  ResultViewController.swift
//  TableViewExample
//
//  Created by Graham,Owen M on 4/8/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayOL: UILabel!
    
    var product:Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayOL.text = "Product Name: \((product?.productName)!)\n\nDescription: \((product?.productDesc)!)"
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
