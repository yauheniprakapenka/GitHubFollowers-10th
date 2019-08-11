//
//  MultipleAppsUITest.swift
//  UITestCollectionUITests
//
//  Created by yauheni prakapenka on 11/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import XCTest

class MultipleAppsUITest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
//        app.launch()
    }
    
    override func tearDown() { }
    
    func testFirstCollapseFirstAppAndExpandSecondApp() {
        let app1 = XCUIApplication(bundleIdentifier: "com.yauheniprakapenka.UITestCollectionApp1")
        let app2 = XCUIApplication(bundleIdentifier: "com.yauheniprakapenka.UITestCollectionApp2")
        
        app1.launch()
        app1.buttons["Несколько приложений"].tap()
        app1.buttons["1. Свернуть первое приложение, развернуть второе"].tap()
        app1.buttons["Первое приложение"].tap()
        
        app2.launch()
        app2.buttons["Несколько приложений"].tap()
        app2.buttons["1. Свернуть первое приложение, развернуть второе"].tap()
        app2.buttons["Второе приложение"].tap()
        
        sleep(1)
        app1.activate()
        XCTAssert(app1.staticTexts["Нажато в первом приложении"].waitForExistence(timeout: 5))
        
        sleep(1)
        app2.activate()
        XCTAssert(app2.staticTexts["Нажато во втором приложении"].waitForExistence(timeout: 5))
    }
    
}
