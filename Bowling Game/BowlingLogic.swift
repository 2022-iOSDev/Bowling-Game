//
//  BowlingLogic.swift
//  Bowling Game
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import Foundation

class BowlingLogic {
    
    var rolls = [Int](repeating: 0, count: 21)
    var currentRole = 0
    
    // Call this for every fresh roll.
    func roll(_ pinCount: Int) {
        
        rolls[currentRole] = pinCount
        currentRole += 1
    }
    
    
    // Call this to calculate the total score after completing all the rolls.
    func calculateScore() -> Int {
        
        var score = 0
        var roll = 0
        for _ in 1...10 {
            // If spare
            if isSpare(roll: roll) {
                score += 10 + rolls[roll+2]
                roll += 2
            } else {
                score += rolls[roll] + rolls[roll+1]
                roll += 2
            }
            
        }
        return score
    }
    
    
    // Spare check
    private func isSpare(roll: Int) -> Bool {
        return rolls[roll] + rolls[roll+1] == 10
    }
}
