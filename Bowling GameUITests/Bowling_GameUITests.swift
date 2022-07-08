//
//  Bowling_GameUITests.swift
//  Bowling GameUITests
//
//  Created by Vignesh Kumar H S on 04/07/22.
//

import XCTest

class Bowling_GameUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testRollTextFieldEmpty() {
        
        let app = XCUIApplication()
        app.textFields["0"].tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keyboards.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
        key.tap()
        app.buttons["Roll"].tap()
        
        let rollTextTitle = app.textFields["0"].title
        XCTAssertEqual(rollTextTitle, "")
                
    }
}
