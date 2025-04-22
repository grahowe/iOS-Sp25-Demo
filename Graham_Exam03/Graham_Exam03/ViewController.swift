//
//  ViewController.swift
//  Graham_Exam03
//
//  Created by Owen Graham on 4/22/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        
        cell.textLabel?.text = gameArray[indexPath.row].name
        
        return cell
    }
    

    @IBOutlet weak var tableViewOL: UITableView!
    
    var gameArray = games
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.dataSource = self
        tableViewOL.delegate = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.selectedGame = gameArray[(tableViewOL.indexPathForSelectedRow?.row)!]
            }
        }
}

