//
//  Bowling_GameTests.swift
//  Bowling GameTests
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import XCTest
@testable import Bowling_Game

class Bowling_GameTests: XCTestCase {

    // 1. Gutter game test
    func testGutter() {
        
        // Arrange
        let bowlingInstance = BowlingLogic()
        
        // Act
        for _ in 1...20 {
            bowlingInstance.roll(0)
        }
        
        // Assert
        XCTAssertEqual(bowlingInstance.calculateScore(), 0)
    }

}
