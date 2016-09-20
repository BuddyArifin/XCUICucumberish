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
        let duration: TimeInterval = 0.6
        press(forDuration: duration)
    }
}

class BasePage: XCTestCase {
    
    func clickTablex(_ text: String){
        let app = XCUIApplication()
        waitForElementToAppear(app.navigationBars.buttons[text])
        app.navigationBars.buttons[text].tap()
    }
    
    static func clickTables(_ text: String){
        let tablesQuery = XCUIApplication().tables
        tablesQuery.staticTexts[text].tap()
    }
    
    static func clickBackButton(_ buttontext: String){
        let app = XCUIApplication()
        app.navigationBars.buttons[buttontext].tap()
    }
    
    static func longpress(_ idx: UInt){
        let cells = XCUIApplication().tables.cells
        let staticTextOfFirstCell = cells.element(boundBy: idx)
            .staticTexts.element(boundBy: idx)
        staticTextOfFirstCell.bnr_longPress()
    }
    
    fileprivate func waitForElementToAppear(_ element: XCUIElement,
                                        file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate,
                                evaluatedWith: element, handler: nil)
        
        waitForExpectations(timeout: 5) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 5 seconds."
                self.recordFailure(withDescription: message,
                                                  inFile: file, atLine: line, expected: true)
            }
        }
    }

}
