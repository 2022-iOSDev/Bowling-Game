//
//  ViewController.swift
//  Bowling Game
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var rollTextfield: UITextField!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var calculateScoreButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rollButton.createBorderShadow()
        calculateScoreButton.createBorderShadow()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
    }
    
    @IBAction func calculateScorePressed(_ sender: Any) {
    }
    
    
}

