//
//  MovieListViewController.swift
//  Graham_MovieApp
//
//  Created by Owen Graham on 4/27/25.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesForGenre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        cell.textLabel?.text = moviesForGenre[indexPath.row].movieName
        
        return cell
    }
    

    @IBOutlet weak var movieListTableView: UITableView!
    
    var selectedGenre: Movies?
    var moviesForGenre: [MovieList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = selectedGenre?.genre
        
        moviesForGenre = selectedGenre?.list_Array ?? []
        
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "movieInfoSegue" {
            let destination = segue.destination as! MovieInfoViewController
            
            destination.selectedMovie = moviesForGenre[(movieListTableView.indexPathForSelectedRow?.row)!]
        }
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
