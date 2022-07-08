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
    }
    
    @IBAction func calculateScorePressed(_ sender: Any) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        rollTextfield.resignFirstResponder()
        self.view.endEditing(true)
    }
}

