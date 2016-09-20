//
//  DueTodayPage.swift
//  XCUITodo
//
//  Created by Tegar on 9/13/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import XCTest
import Foundation

class DueTodayPage: BasePage {
    
    
    func clickMenus(_ menu: String){
        clickTablex(menu)
    }
    
    static func clickMenu(_ menu:String){
        clickTables(menu)
    }
    
    static func clickBack(){
        clickBackButton("Pick a List")
    }
    
    static func verifyMenu(){
        let app = XCUIApplication()
        XCTAssert(app.staticTexts["Due Today"].exists, "Menu Ada")
        XCTAssert(app.staticTexts["Unfinished"].exists, "Menu Ada")
        XCTAssert(app.staticTexts["Finished"].exists, "Menu Ada")
    }
    
    static func verifyDueTodayPage(){
        let app = XCUIApplication()
        XCTAssert(app.staticTexts["Due Today"].exists)
    }
    
}
