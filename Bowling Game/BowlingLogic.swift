//
//  BowlingLogic.swift
//  Bowling Game
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import Foundation

class BowlingLogic {
    
    var finalScore = 0
    
    
    // Call this for every fresh roll.
    func roll(_ pinCount: Int) {
        finalScore = finalScore + pinCount
    }
    
    
    // Call this to calculate the total score after completing all the rolls.
    func calculateScore() -> Int {
        return finalScore
    }
}
