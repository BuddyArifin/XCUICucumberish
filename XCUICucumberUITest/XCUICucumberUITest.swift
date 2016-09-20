//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

import Foundation
import XCTest
class XCUICucumberUITest: NSObject {
    class func CucumberishSwiftInit()
    {
        var application : XCUIApplication!

        beforeStart { () -> Void in
            application = XCUIApplication()
            HomepageTest.setupHomePage()
            DueTodayTaskTest.setupDueTodayTask()
            UnfinishedTaskTest.setupUnfinishedTask()
        }
        
        Given("the app is running") { (args, userInfo) -> Void in
            application.launch()
        }
     
        
        Cucumberish.executeFeatures(inDirectory: "Features", includeTags: nil, excludeTags: nil)
    }
}
