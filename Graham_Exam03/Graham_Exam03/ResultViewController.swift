//
//  ResultViewController.swift
//  Graham_Exam03
//
//  Created by Owen Graham on 4/22/25.
//

import UIKit

class ResultViewController: UIViewController {
    

    @IBOutlet weak var imageOL: UIImageView!
    @IBOutlet weak var titleOL: UILabel!
    @IBOutlet weak var descOL: UITextView!
    
    var selectedGame: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = selectedGame?.name
        
        imageOL.image =  selectedGame?.imageName
        titleOL.text = selectedGame?.name
        descOL.text = selectedGame?.information

        // Do any additional setup after loading the view.
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
