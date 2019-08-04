//
//  UITestCollectionUITests.swift
//  UITestCollectionUITests
//
//  Created by yauheni prakapenka on 04/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import XCTest

class UITestTapAButton: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testTapAButtonWithIdentifier() {
        app.buttons["Tap a button"].tap()
        app.buttons["buttonWithIdentifier"].tap()
        XCTAssert(app.staticTexts["#1 нажато"].exists)
    }
    
    func testTapAButtonWithoutIdentifier() {
        app.buttons["Tap a button"].tap()
        app.buttons["Button without identifier"].tap()
        XCTAssert(app.staticTexts["#2 нажато"].exists)
    }

}
