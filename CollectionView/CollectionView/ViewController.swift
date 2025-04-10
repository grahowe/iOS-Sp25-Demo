//
//  ViewController.swift
//  CollectionView
//
//  Created by Graham,Owen M on 4/10/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create, populate, return
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleLabelOL.text = "Title: \(movies[indexPath.row].title)"
        releaseYearOL.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOL.text = "Movie Rating: \(movies[indexPath.row].movieRating)"
        revenueOL.text = "Revenue: \(movies[indexPath.row].boxOffice)"
    }
    
    @IBOutlet weak var titleLabelOL: UILabel!
    @IBOutlet weak var releaseYearOL: UILabel!
    @IBOutlet weak var ratingOL: UILabel!
    @IBOutlet weak var revenueOL: UILabel!
    @IBOutlet weak var collectionViewOL: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
    }


}

