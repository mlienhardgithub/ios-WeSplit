//
//  WeSplitUITests.swift
//  WeSplitUITests
//
//  Created by Martin Lienhard on 3/11/21.
//

import XCTest

class WeSplitUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override class func setUp() {
        // 1.
        // This is the setUp() class method.
        // It is called before the first test method begins.
        // Set up any overall initial state here.
        
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let tablesQuery = app.tables
        app.textFields.element.tap()
        app.keys["2"].tap()
        app.keys["7"].tap()
        app.keys["."].tap()
        app.keys["5"].tap()
        app.keys["0"].tap()
        app.keyboards.buttons["Return"].tap()
        
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Number of people"]/*[[".cells[\"Number of people\"].buttons[\"Number of people\"]",".buttons[\"Number of people\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["3 people"]/*[[".cells[\"3 people\"].buttons[\"3 people\"]",".buttons[\"3 people\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.textFields.element.tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 11.2.3, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
