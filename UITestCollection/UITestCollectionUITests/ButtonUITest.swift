//
//  UITestCollectionUITests.swift
//  UITestCollectionUITests
//
//  Created by yauheni prakapenka on 04/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import XCTest

class ButtonUITest: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() { }

    func testOneTapTheButtonWithIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["1. Нажать на кнопку по идентификатору"].tap()
        app.buttons["ButtonWithID"].tap()
        XCTAssert(app.staticTexts["Тест 1 выполнен успешно"].exists)
    }
    
    func testOneTapTheButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["2. Нажать на кнопку без идентификатора"].tap()
        app.buttons["Button without ID"].tap()
        XCTAssert(app.staticTexts["Тест 2 выполнен успешно"].exists)
    }
    
    func testThreeTapAButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["3. Нажать на первую кнопку с одинаковым названием"].tap()
        app.buttons["Button"].firstMatch.tap()
        XCTAssert(app.staticTexts["Тест 3 выполнен успешно"].exists)
    }
    
    func testFourTapAButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["4. Нажать на кнопку в Alert"].tap()
        app.buttons["Button"].tap()
        app.alerts.buttons["Two"].tap()
        XCTAssert(app.staticTexts["Тест 4 выполнен успешно"].exists)
    }
    
    func testFiveTapANavigationBarButton() {
        app.buttons["Button"].tap()
        app.buttons["5. Нажать на кнопку в Navigation Bar"].tap()
        app.navigationBars.buttons["Camera"].tap()
//        app.navigationBars.buttons["Delete"].tap()
        XCTAssert(app.staticTexts["Тест 5 выполнен успешно"].exists)
    }
    
    func testSixTapAnActionSheetButton() {
        app.buttons["Button"].tap()
        app.buttons["Show action sheet"].tap()
        XCTAssert(app.staticTexts["Action Sheet Title"].exists)
        app.buttons["Approve"].tap()
        XCTAssert(!app.staticTexts["Action Sheet Title"].exists)
        XCTAssert(app.staticTexts["#6 успешно"].exists)
    }
    
}


