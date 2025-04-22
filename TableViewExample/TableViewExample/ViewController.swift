//
//  ViewController.swift
//  TableViewExample
//
//  Created by Graham,Owen M on 4/8/25.
//

import UIKit

// Write a product class here
class Product {
    var productName:String
    var productDesc:String
    
    // Class must have initializer
    init(productName: String, productDesc: String) {
        self.productName = productName
        self.productDesc = productDesc
        
        // Equivalent to this. in Java
    }
}

// This is an override function
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the product array count
        productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        
        // Populate the cell
        cell.textLabel?.text = productArray[indexPath.row].productName
        
        // Return the cell
        return cell
    }
    

    @IBOutlet weak var tableViewOL: UITableView!
    
    // Declare an array
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Delegate
        tableViewOL.dataSource = self
        tableViewOL.delegate = self
        
        // Create product objects
        let product1 = Product(productName: "Dipole Antenna", productDesc: "The dipole antenna is a simple antenna to make. It is horizontally polarized.")
        // Append products
        productArray.append(product1)
        
        let product2 = Product(productName: "Jungle Antenna", productDesc: "The jungle antenna is the ultimate survival or prepper antenna. It is equivalent to either a vertical dipole or a 1/4-wave dipole.")
        productArray.append(product2)
        
        let product3 = Product(productName: "Yagi", productDesc: "A yagi antenna is a hi-gain directional antenna. It is directionally polarized and can provide a receive gain of around 6dB")
        productArray.append(product3)
        
        let product4 = Product(productName: "End Fed", productDesc: "An end fed antenna is fed at one end. This provides high impedance and multi-band performance but requires a transformer.")
        productArray.append(product4)
        
        let product5 = Product(productName: "Dummy load", productDesc: "A dummy load is a non-radiating 50 ohm load. It is used for testing transmitters.")
        productArray.append(product5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.product = productArray[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
}

