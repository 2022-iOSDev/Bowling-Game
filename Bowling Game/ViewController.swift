//
//  ViewController.swift
//  Bowling Game
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var rollTextfield: UITextField!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var calculateScoreButton: UIButton!
    @IBOutlet weak var scoreTitleLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    // ViewModel
    var viewModel: BowlingLogic?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = BowlingLogic()

        rollButton.createBorderShadow()
        calculateScoreButton.createBorderShadow()
        
        // Initial hiding of score title and label
        scoreTitleLabel.isHidden = true
        scoreLabel.isHidden = true
    }

    
    // Button Actions
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        // Check for non-empty input
        if rollTextfield.text != "" {
            // Converting string input to Integer
            if let rollScore: Int = Int(rollTextfield.text!) {
                // Chec for valid input
                if rollScore > 0 && rollScore < 10 {
                    // Roll logic
                    viewModel?.roll(rollScore)
                    rollTextfield.text = ""
                } else {
                    let alert = UIAlertController(title: "Invalid Input", message: "Please enter valid roll score", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    rollTextfield.text = ""
                }
            } else {
                let alert = UIAlertController(title: "Invalid Input", message: "Please enter valid roll score", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                rollTextfield.text = ""
            }
        } else {
            let alert = UIAlertController(title: "Roll score is empty", message: "Please enter your roll score", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func calculateScorePressed(_ sender: Any) {
        
        let finalScore = viewModel?.calculateScore()
        scoreLabel.text = String(describing: finalScore!)
        
        // Unhiding score title and label
        scoreTitleLabel.isHidden = false
        scoreLabel.isHidden = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        rollTextfield.resignFirstResponder()
        self.view.endEditing(true)
    }
}

