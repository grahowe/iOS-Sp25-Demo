//
//  ViewController.swift
//  Graham_SearchApp
//
//  Created by Owen Graham on 4/1/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {


    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var topicInfoText: UITextView!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    let topics = ["Famous Landmarks", "Space Exploration", "Radio", "Programming", "Weather"]
    
    var images = [
        ["globe", "globe2", "globe3"], ["space", "space2", "space3"], ["ham", "ham2", "ham3"], ["arduino"], ["radar", "radar2", "radar3"]
    ]
    
    var keywords = [
        ["landmark", "monument", "tourism"], ["space", "satellite", "planets"], ["radio", "antennas", "communications"], ["microcontroller", "Python", "computer"], ["weather", "storms", "storm chasing"]
    ]
    
    var descriptions = [
        ["The Globe Theater is a popular tourist destination. Here, patrons can walk into the very place where some of William Shakespeare's famous plays were first performed.", "The Globe Theater was built sometime around 1599 by Shakespeare's acting company. It is located in Thames in England. A fire broke out and burned down much of the original structure in 1613 but it was rebuilt in 1614.", "The Globe Theater that tourists can visit is a replica of the original and was based on paintings, writings, thorough research and evidence of the original."], ["Space is often considered the Final Frontier. Humanity's furthest space probe are the Voyager probes, both launched in 1977.", "There is an infinite amount of galaxies and planets in our universe. Many experts agree that there are more stars in our solar system than single grains of sand on the Earth.", "Recently, the United States has taken an interest in putting man and now woman on the moon. The Artemis program is NASA's lunar program that was first conceptualized in December 2017. Artemis I, the maiden flight of the program, was launched in 2022 and orbited the moon for about 2 weeks."], ["Radio is one of human's oldest mediums of communication. It is used to broadcast music and important information.", "Special radio operators called amateur radio operators are at the forefront of RF technology. Many 'hams' as they are called construct their own radios, antennas, and accessories.", "Hams usually construct low powered radios called QRP radios. These only put out radio power around 1 watt or less. Amateurs around the world have made contacts on as little as 10 milliwatts!"], ["Coding is a great way to start in Computer Science. Many beginners learn coding through programming microcontrollers such as the Arduino boards.", "Arduinos can control many external devices, such as motors, LEDs, and sensors. These sensors can also return information to the microcontroller which can then be interpreted for data collection.", "Besides coding microcontrollers, beginners usually code in Python due to its simple syntax."], ["Weather is a fascinating natural phenomenon that uses all sorts of technology. Radar is a crucial instrument used to track rainfall, storms, and even tornadoes.", "Many people pursue dangerous storms for scientific research and study. These storm chasers follow storms at safe distances but others, such as Reed Timmer, have custom-built vehicles constructed to withstand winds of up to 300mph.", "The National Weather Service is the United States' main source of weather information. As a subsidy of the Department of Commerece, the National Weather Service is to provide weather data, forcasts and warnings for the protection of life and property, and to enhance the national economy."]
    ]
    
    var currentTopicIdx: Int? = nil
    var currentImageIdx = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupInitialView()
    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        
        if let searchText = searchTextField.text?.lowercased(), !searchText.isEmpty {
                var found = false
                
                // Loop through the keywords array
                for (index, keywordList) in keywords.enumerated() {
                    // Check if any keyword contains the search term
                    if keywordList.contains(where: { $0.lowercased().contains(searchText) }) {
                        currentTopicIdx = index
                        currentImageIdx = 0
                        updateImageDesc()
                        found = true
                        break
                    }
                }

                if !found {
                    resultImage.image = UIImage(named: "not_found")
                    topicInfoText.text = "No results found for \(searchText)"
                }
            }
    }
    
    @IBAction func ShowNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        
        if let topicIndex = currentTopicIdx, currentImageIdx < images[topicIndex].count - 1 {
            currentImageIdx += 1
            updateImageDesc()
        }
    }
    
    @IBAction func ShowPrevImageBtn(_ sender: Any) {
        AudioServicesPlaySystemSound(1105)
        
        if let topicIndex = currentTopicIdx, currentImageIdx > 0 {
            currentImageIdx -= 1
            updateImageDesc()
        }
    }
    
    @IBAction func ResetBtn(_ sender: Any) {
        AudioServicesPlaySystemSound(1111)
        
        setupInitialView()
    }
    
    func setupInitialView(){
        searchButton.isEnabled = false
        prevButton.isEnabled = false
        nextButton.isEnabled = false
        searchTextField.text = ""
        
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Owen!"
    }
    
    func updateImageDesc() {
        if let topicIndex = currentTopicIdx {
            resultImage.image = UIImage(named: images[topicIndex][currentImageIdx])
            topicInfoText.text = descriptions[topicIndex][currentImageIdx]
            prevButton.isEnabled = currentImageIdx > 0
            nextButton.isEnabled = currentImageIdx < images[topicIndex].count - 1
        }
    }
    
    @IBAction func searchTextChanged(_ sender: UITextField) {
        if let text = sender.text, !text.isEmpty {
                searchButton.isEnabled = true
            } else {
                searchButton.isEnabled = false
            }
    }
    
    
    
}

