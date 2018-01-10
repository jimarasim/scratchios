//
//  scratchiosUITests.swift
//  scratchiosUITests
//
//  Created by JAMES K ARASIM on 6/19/17.
//  Copyright © 2017 JAMES K ARASIM. All rights reserved.
//

import XCTest

class scratchiosUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPalindrome() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.buttons["clear"].tap()

        app.textFields["textfield"].tap()
        app.textFields["textfield"].typeText("hattah")
        
        app.buttons["palindrome"].tap()
        
        app.textFields["statusfield"].tap()
        let status: String = String(describing: app.textFields["statusfield"].value!)
        print("STATUSFIELD: \(status)")
        XCTAssert(status=="Palindrome")
    }
    
    func testNotPalindrome() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.buttons["clear"].tap()

        app.textFields["textfield"].tap()
        app.textFields["textfield"].typeText("hat")
        
        app.buttons["palindrome"].tap()
        
        app.textFields["statusfield"].tap()
        let status: String = String(describing: app.textFields["statusfield"].value!)
        print("STATUSFIELD: \(status)")
        XCTAssert(status=="Not Palindrome")
        
    }
    
    func testReverse(){
        let app = XCUIApplication()
        app.buttons["clear"].tap()
        
        app.textFields["textfield"].tap()
        app.textFields["textfield"].typeText("they sentence")
        
        app.buttons["reverse"].tap()
        
        let status: String = String(describing: app.textFields["statusfield"].value!)
        XCTAssert(status=="ecnetnes yeht")

    }
    
    
}
