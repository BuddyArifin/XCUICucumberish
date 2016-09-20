//
//  DueTodayTaskTesk.swift
//  XCUITodo
//
//  Created by Tegar on 9/13/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation
import XCTest

class DueTodayTaskTest: NSObject {

    
    
    fileprivate func setupDueTodayTask()
    {
        
        Then("I click due today") { (args,userInfo) in
            DueTodayPage.clickMenu("Due Today")
        }
        
        Then("I click back due today") { (args,userInfo) in
            DueTodayPage.clickBack()
        }
        
        Then("I verified due today menu"){ (args,userInfo) in
            DueTodayPage.verifyDueTodayPage()
        }
    }
    
    class func setupDueTodayTask()
    {
        DueTodayTaskTest().setupDueTodayTask()
    }
    
    
}
