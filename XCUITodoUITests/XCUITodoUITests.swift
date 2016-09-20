//
//  XCUITodoUITests.swift
//  XCUITodoUITests
//
//  Created by Tegar on 2016-08-01.
//  Copyright © 2016 OLXID. All rights reserved.
//

import XCTest

class XCUITodoUITests: XCTestCase {
    
    struct pickMenu {
        let menuToday = "Due Today"
        let menuUnFinished = "Unfinished"
    }
  

    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_001() {
        let menu = pickMenu()
        UIPages.clickMenu(menu.menuToday)
        UIPages.clickBack()
        UIPages.clickMenu(menu.menuUnFinished)
        UIPages.clickBack()
        UIPages.verifyMenu()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
       
}
