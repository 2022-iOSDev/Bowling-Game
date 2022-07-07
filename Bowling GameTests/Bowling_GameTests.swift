//
//  Bowling_GameTests.swift
//  Bowling GameTests
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import XCTest
@testable import Bowling_Game

final class Bowling_GameTests: XCTestCase {
    
    private var bowlingInstance: BowlingLogic!
    
    // Arrange
    override func setUp() {
        super.setUp()
        bowlingInstance = BowlingLogic()
    }
    override func tearDown() {
        bowlingInstance = nil
        super.tearDown()
    }

    private func multipleRolling(pinCount: Int, times: Int) {
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
    
    // Roll a spare
    private func rollSpare() {
        bowlingInstance.roll(5)
        bowlingInstance.roll(5)
    }
    
    // 3. Test a spare
    func testSingleSpare() {
        
        rollSpare()
        bowlingInstance.roll(2)
        multipleRolling(pinCount: 0, times: 17)
        
        XCTAssertEqual(bowlingInstance.calculateScore(), 14)
    }
    
    // Roll a strike
    private func rollStrike() {
        bowlingInstance.roll(10)
    }

    // 4. Test a strike
    func testOneStrike() {
        
        rollStrike()
        bowlingInstance.roll(3)
        bowlingInstance.roll(2)
        multipleRolling(pinCount: 0, times: 16)
        
        XCTAssertEqual(bowlingInstance.calculateScore(), 20)
    }
    
    // 5. Test a perfect game
    func testAllStrike() {
        
        multipleRolling(pinCount: 10, times: 12)
        
        XCTAssertEqual(bowlingInstance.calculateScore(), 300)
    }
    
    // 6. Test a random game without any strike or spare
    func testNoSpareOrStrike() {
        
        var score = 0
        for _ in 1...20 {
            let random = Int.random(in: 1..<5)
            bowlingInstance.roll(random)
            score += random
        }
        
        XCTAssertEqual(bowlingInstance.calculateScore(), score)
    }
}
