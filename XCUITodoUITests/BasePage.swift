//
//  BasePage.swift
//  XCUITodo
//
//  Created by Tegar on 8/25/16.
//  Copyright © 2016 OLX . All rights reserved.
//

import XCTest
import Foundation

extension XCUIElement {
    func bnr_longPress() {
        let duration: NSTimeInterval = 0.6
        pressForDuration(duration)
    }
}

class BasePage: XCTestCase {
    
    func clickTablex(text: String){
        let app = XCUIApplication()
        waitForElementToAppear(app.navigationBars.buttons[text])
        app.navigationBars.buttons[text].tap()
    }
    
    static func clickTables(text: String){
        let tablesQuery = XCUIApplication().tables
        tablesQuery.staticTexts[text].tap()
    }
    
    static func clickBackButton(buttontext: String){
        let app = XCUIApplication()
        app.navigationBars.buttons[buttontext].tap()
    }
    
    static func longpress(idx: UInt){
        let cells = XCUIApplication().tables.cells
        let staticTextOfFirstCell = cells.elementBoundByIndex(idx)
            .staticTexts.elementBoundByIndex(idx)
        staticTextOfFirstCell.bnr_longPress()
    }
    
    private func waitForElementToAppear(element: XCUIElement,
                                        file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectationForPredicate(existsPredicate,
                                evaluatedWithObject: element, handler: nil)
        
        waitForExpectationsWithTimeout(5) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 5 seconds."
                self.recordFailureWithDescription(message,
                                                  inFile: file, atLine: line, expected: true)
            }
        }
    }
    
}
