//
//  Homepage.swift
//  XCUITodo
//
//  Created by Tegar on 8/25/16.
//  Copyright © 2016 OLX. All rights reserved.
//

import Foundation
import XCTest

class Homepage: BasePage {
    
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

}
