//
//  UnfinishedTask.swift
//  XCUITodo
//
//  Created by Tegar on 9/11/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation
import XCTest

class UnfinishedTaskTest: NSObject {
    
    //fileprivate var application : XCUIApplication!
    
    
    fileprivate func setupUnfinishedTask()
    {
        
        Then("I click unfinished") { (args,userInfo) in
            UnfinishedPage.clickMenu("Unfinished")
        }
        
        Then("I click back") { (args,userInfo) in
            UnfinishedPage.clickBack()
        }
        
        Then("I verified menu"){ (args,userInfo) in
            UnfinishedPage.verifyMenu()
        }
        
        Then("I verified unfinished menu"){ (args,userInfo) in
            UnfinishedPage.verifyUnfinishedPage()
        }
        
    }
    
    class func setupUnfinishedTask()
    {
       UnfinishedTaskTest().setupUnfinishedTask()
    }
    
    
}
