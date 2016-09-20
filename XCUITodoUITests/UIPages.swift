//
//  UIPages.swift
//  XCUITodo
//
//  Created by Tegar on 8/25/16.
//  Copyright © 2016 OLX5654r6r6t7
//

import Foundation
import XCTest

class UIPages:BasePage {
    
    
    static func clickMenu(menu:String){
        clickTables(menu)
    }
    
    static func clickBack(){
        clickBackButton("Pick a List")
    }
    
    static func verifyMenu(){
       let app = XCUIApplication!
        XCTAssert(app.staticTexts["Due Today"].exists, "Menu Ada")
        XCTAssert(app.staticTexts["Unfinished"].exists, "Menu Ada")
        XCTAssert(app.staticTexts["Finished"].exists, "Menu Ada")
    }
    
}
