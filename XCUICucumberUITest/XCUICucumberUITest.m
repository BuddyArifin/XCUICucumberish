//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XCUICucumberUITest-Swift.h"
#import <XCTest/XCTest.h>


__attribute__((constructor))
void CucumberishInit()
{
    [XCUICucumberUITest CucumberishSwiftInit];
    
}