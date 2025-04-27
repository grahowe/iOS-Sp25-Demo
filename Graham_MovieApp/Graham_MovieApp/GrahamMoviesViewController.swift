//
//  ViewController.swift
//  Graham_MovieApp
//
//  Created by Owen Graham on 4/27/25.
//

import UIKit

class GrahamMoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        
        cell.textLabel?.text = movieArray[indexPath.row].genre
        
        return cell
    }
    
    
    
    @IBOutlet weak var moviesTableView: UITableView!
    
    var movieArray = moviesArray
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Genres"
        
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "listsSegue" {
            let destination = segue.destination as! MovieListViewController
            
            destination.selectedGenre = movieArray[(moviesTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

