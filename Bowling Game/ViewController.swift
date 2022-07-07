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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rollButton.createBorderShadow()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
    }
    
}

