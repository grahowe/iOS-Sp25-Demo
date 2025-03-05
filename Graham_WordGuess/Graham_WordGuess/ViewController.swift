//
//  ViewController.swift
//  Graham_WordGuess
//
//  Created by Owen Graham on 3/5/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var displayImg: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    
    // Game variables
    var wordsArray = [
        ["radio", "AM, FM, or SW", "A.png"],
        ["Apple", "Steve Jobs & Steve Wozniak", "B.png"],
        ["Linux", "Debian, Ubuntu, Fedora", "C.png"],
        ["Music", "Sounds, rhythm, beat, time signature", "D.png"],
        ["Bearcat", "Bobby, NW Missouri, Maryville", "E.png"]
    ]
    var currentWordIndex = 0
    var currentWord = ""
    var guessedLetters = ""
    var wrongGuesses = 0
    var maxNumOfWrongGuesses = 10
    var wordsGuessed = 0
    var wordsRemaining = 5
    var totalWords = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadNewWord()
    }
    
    func loadNewWord() {
        currentWord = wordsArray[currentWordIndex][0]
        guessedLetters = ""
        wrongGuesses = 0
        userGuessLabel.text = String(repeating: "_ ", count: currentWord.count)
        hintLabel.text = "Hint: \(wordsArray[currentWordIndex][1])"
        guessLetterField.text = ""
        guessCountLabel.text = "Guesses: 0"
        totalWordsLabel.text = "Total number of words in game: \(totalWords)"
        displayImg.image = UIImage(named: " ")
        statusLabel.text = ""
    }

    @IBAction func guessLetterBtnPressed(_ sender: UIButton) {
        guard let letter = guessLetterField.text?.uppercased(), !letter.isEmpty else { return }
            
            // Check if the letter was guessed before
            if guessedLetters.contains(letter) {
                statusLabel.text = "You've already guessed this letter."
                guessLetterField.text = ""
                return
            }

            // Add the guessed letter to the guessedLetters string
            guessedLetters += letter
            
            // Initialize variables
            var revealWord = ""
            var correctGuess = false

            // Loop through the word and check each character
            for char in currentWord {
                if guessedLetters.contains(char.uppercased()) {
                    revealWord += "\(char) "
                    correctGuess = true // If any letter matches, it's a correct guess
                } else {
                    revealWord += "_ "
                }
            }

            // Update the display
            userGuessLabel.text = revealWord.trimmingCharacters(in: .whitespaces)

            // Handle correct guess
            if correctGuess {
                statusLabel.text = "Good guess! Keep going."
            } else {
                // If it's an incorrect guess, increment the wrong guesses count
                wrongGuesses += 1
                guessCountLabel.text = "Guesses: \(wrongGuesses)"
                
                // Check if the wrong guesses exceed the limit
                if wrongGuesses >= maxNumOfWrongGuesses {
                    statusLabel.text = "You have used all the available guesses. Please play again."
                    playAgainButton.isHidden = false
                } else {
                    statusLabel.text = "Wrong guess! Try again."
                }
            }
            
            // Check if the word is completely guessed
            if !revealWord.contains("_") {
                statusLabel.text = "You've guessed it correctly! \(currentWord)"
                wordsGuessed += 1
                wordsRemaining -= 1
                displayImg.image = UIImage(named: wordsArray[currentWordIndex][2])
                displayImg.isHidden = false
                playAgainButton.isHidden = false
                checkGameStatus()
                wordsGuessedLabel.text = "Total number of words guessed successfully: \(wordsGuessed)"
                wordsRemainingLabel.text = "Total number of words remaining in game: \(wordsRemaining)"
            }

            // Clear the input field after each guess
            guessLetterField.text = ""
            
    }
    
    @IBAction func playAgainBtnPressed(_ sender: UIButton) {
        if wordsRemaining == 0 {
            statusLabel.text = "Congratulations, You are done! Please start over."
            playAgainButton.isHidden = true
            resetGame()
        } else {
            currentWordIndex += 1
            if currentWordIndex < wordsArray.count {
                loadNewWord()
                playAgainButton.isHidden = true
            } else {
                statusLabel.text = "Congratulations, You've guessed all the words!"
                playAgainButton.isHidden = true
            }
        }
    }
    
    func resetGame() {
        wordsGuessed = 0
        wordsRemaining = totalWords
        currentWordIndex = 0
        loadNewWord()
    }
    
    func checkGameStatus() {
        if wordsRemaining == 0 {
            statusLabel.text = "Congratulations, You have completed the game!"
            playAgainButton.isHidden = false
        }
    }
    
    
}

