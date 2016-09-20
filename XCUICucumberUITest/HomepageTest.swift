//
//  Homepage.swift
//  XCUITodo
//
//  Created by Tegar on 9/10/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation
import XCTest

class HomepageTest: NSObject  {
    
    //fileprivate var application : XCUIApplication!
    
    
    fileprivate func setupHomePage()
    {
        
        Then("I click due today") { (args,userInfo) in
            Homepage.clickMenu("Due Today")
        }
        
        Then("I click back") { (args,userInfo) in
            Homepage.clickBack()
        }
        
        Then("I verified menu"){ (args,userInfo) in
            Homepage.verifyMenu()
        }
        
    }
    
    class func setupHomePage()
    {
        HomepageTest().setupHomePage()
    }

    
}
