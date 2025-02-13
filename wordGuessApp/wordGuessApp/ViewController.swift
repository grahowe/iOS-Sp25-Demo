//
//  ViewController.swift
//  wordGuessApp
//
//  Created by Graham,Owen M on 2/13/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayOL: UILabel!
    @IBOutlet weak var hintOL: UILabel!
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var checkOL: UIButton!
    @IBOutlet weak var congratOL: UILabel!
    @IBOutlet weak var againOL: UIButton!
    
    //Populate the dictionary
    var words = [["MORSE", "Dots and Dashes"],
    ["ANTENNA", "Wire or Tower"],
    ["ARDUINO", "Microcontroller"],
    ["PIXIE", "A tiny radio"]]
    
    //Set the letter count to 0
    var count = 0;
    
    //Initialize the word to be blank
    var word = ""
    
    //Create a letters guessed string to store our entered letters
    var lettersGuessed = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Initially, our check button is disabled
        checkOL.isEnabled = false;
        
        //We need to get the first word from the array
        word = words[count][0]
        
        displayOL.text = ""
        
        //Use a function to populate our WORD label with underscores
        updateUnderscores();
        
        //Get the first hint from our array
        hintOL.text = "Hint: " + words[count][1]
        
        //Clear the congrats label initially
        congratOL.text = ""
    }

    @IBAction func checkBtnClicked(_ sender: UIButton) {
        //Get the text from the text input
        var letter = inputOL.text!
        
        //Replace the guessed letter if the letter is part of the word
        lettersGuessed = lettersGuessed + letter
        var revealWord = ""
        
        for l in word{
            if lettersGuessed.contains(l){
                revealWord += "\(l)"
            }
            else{
                revealWord += "_ "
            }
        }
        
        //Assign the word to displayLabel after a guess
        displayOL.text = revealWord
        inputOL.text = ""
        
        //If the word is guessed correctly, we are enabling play again button and disabling the check button
        if displayOL.text!.contains("_") == false {
            againOL.isHidden = false;
            checkOL.isEnabled = false;
        }
        
        checkOL.isEnabled = false
    }
   
    @IBAction func playAgainBtnClicked(_ sender: UIButton) {
        //Reset the button to disable it on startup
        againOL.isHidden = true
        //Clear the label
        lettersGuessed = ""
        count += 1
        
        //If the count reaches the end of the array, print congrats label
        if count == words.count{
            congratOL.text = "Congratulations, you won!"
            
            //Clear remaining labels
            displayOL.text = ""
            hintOL.text = ""
        }
        else{
            //Grab the next word array
            word = words[count][0]
            
            //Grab the related hint
            hintOL.text = "Hint: " + words[count][1]
            
            //Enable the check button
            checkOL.isEnabled = true
            
            displayOL.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        //Read the data from our text input
        var textEntered = inputOL.text!;
        
        //Consider only the last character by calling textEntered.last and trimming any white space
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        inputOL.text = textEntered
        
        //Check whether the entered text is empty or not to enable the check button
        if textEntered.isEmpty{
            checkOL.isEnabled = false
        }
        else{
            checkOL.isEnabled = true
        }
    }
    
    func updateUnderscores(){
        for letter in word{
            displayOL.text! += "_ "
        }
    }
    
}

