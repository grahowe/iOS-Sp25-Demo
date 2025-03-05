//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Graham,Owen M on 3/4/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageViewOL.image = UIImage(named: "Best")
        
        // Set up the image for min and max
        let minx = imageViewOL.frame.minX
        let miny = imageViewOL.frame.minY
        print(minx, ",", miny)
        
        let maxx = imageViewOL.frame.maxX
        let maxy = imageViewOL.frame.maxY
        print(maxx, ",", maxy)
        
        // Move the location to the upper left corner
        imageViewOL.frame.origin.x = 0
        imageViewOL.frame.origin.y = 0
        
        // Move to the upper right corner
        // Adjust the X value so we can see the entire image. The iPhone's screen is 393 wide
        imageViewOL.frame.origin.x = 293
        imageViewOL.frame.origin.y = 0
        
        // We now can move to the bottom left corner
        imageViewOL.frame.origin.x = 0
        
        // 852 - 100 (height of pic) = 752
        imageViewOL.frame.origin.y = 752
        
        // And now the bottom right corner
        imageViewOL.frame.origin.x = 293
        imageViewOL.frame.origin.y = 752
        
        // And finally, the center of the view (screen)
        // (393 - width / 2)
        imageViewOL.frame.origin.x = 146.5
        
        // (852 - height / 2)
        imageViewOL.frame.origin.y = 376
    }


}

