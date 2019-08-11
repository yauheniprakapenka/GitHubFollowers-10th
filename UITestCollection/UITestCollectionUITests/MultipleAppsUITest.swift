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
        app1.buttons["1. Несколько одинаковых приложений"].tap()
        app1.buttons["Первое приложение"].tap()
        
        app2.launch()
        app2.buttons["Несколько приложений"].tap()
        app2.buttons["1. Несколько одинаковых приложений"].tap()
        app2.buttons["Второе приложение"].tap()
        
        app1.activate()
        sleep(1)
        XCTAssert(app1.staticTexts["Нажато в первом приложении"].exists)
        XCTAssert(!app1.staticTexts["Нажато во втором приложении"].exists)
        
        app2.activate()
        sleep(1)
        XCTAssert(app2.staticTexts["Нажато во втором приложении"].exists)
        XCTAssert(!app2.staticTexts["Нажато в первом приложении"].exists)
    }
    
}
