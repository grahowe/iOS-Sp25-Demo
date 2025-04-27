//
//  MovieInfoViewController.swift
//  Graham_MovieApp
//
//  Created by Owen Graham on 4/27/25.
//

import UIKit

class MovieInfoViewController: UIViewController {
    
    @IBOutlet weak var movieImageOL: UIImageView!
    @IBOutlet weak var movieInfoOL: UITextView!
    @IBOutlet weak var showInfoOL: UIButton!
    
    var selectedMovie: MovieList?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = selectedMovie?.movieName
        
        if let movie = selectedMovie {
            movieImageOL.image = UIImage(named: movie.movieImage)
        }
    }
    
    @IBAction func showInfoBtn(_ sender: Any) {
        if let movie = selectedMovie {
            movieInfoOL.text = movie.movieInfo
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
