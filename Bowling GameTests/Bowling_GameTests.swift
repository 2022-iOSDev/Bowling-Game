//
//  Bowling_GameTests.swift
//  Bowling GameTests
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import XCTest
@testable import Bowling_Game

class Bowling_GameTests: XCTestCase {
    
    var bowlingInstance: BowlingLogic!
    
    // Arrange
    override func setUp() {
        super.setUp()
        bowlingInstance = BowlingLogic()
    }

    func multipleRolling(pinCount: Int, times: Int) {
        for _ in 1...times {
            bowlingInstance.roll(pinCount)
        }
    }
    
    
    
    // 1. Gutter game test
    func testGutter() {
        
        multipleRolling(pinCount: 0, times: 20)
        
        XCTAssertEqual(bowlingInstance.calculateScore(), 0)
    }
    
    // 2. Test all ones
    func testAllOnes() {
        
        multipleRolling(pinCount: 1, times: 20)
        
        XCTAssertEqual(bowlingInstance.calculateScore(), 20)
    }
    
    

}
