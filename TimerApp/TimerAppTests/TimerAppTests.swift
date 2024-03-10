//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import XCTest
@testable import TimerApp

class DashBoardViewModelTests: XCTestCase {

    var dashboardViewModel: DashBoardViewModel!

    override func setUp() {
        super.setUp()
        dashboardViewModel = DashBoardViewModel()
    }

    override func tearDown() {
        dashboardViewModel = nil
        super.tearDown()
    }

    func testFlipViewModelsCount() {
        XCTAssertEqual(dashboardViewModel.flipViewModels.count, 4, "Flip view models count should be 4")
    }

    func testUpdateTimeComponents() {
        dashboardViewModel.updateTimeComponents()
        if let text = dashboardViewModel.flipViewModels[0].text {
            XCTAssertEqual(text, "04", "Remaining days should be 04")
        }
    }
}

class TimerViewModelTest: XCTestCase {
    
    var timerViewModel: TimerViewModel!
    
    override func setUp() {
        super.setUp()
        timerViewModel = TimerViewModel()
    }
    
    override func tearDown() {
        timerViewModel = nil
        super.tearDown()
    }
    
    func testUpdateTexts() {
            // Set up initial values
            timerViewModel.text = "10"
            timerViewModel.oldValue = "9"
        
            // Verify that animations are triggered
            XCTAssertTrue(timerViewModel.animateTop,
                          "animateTop should be true after updating text")
            XCTAssertTrue(timerViewModel.animateBottom,
                          "animateBottom should be true after updating text")
            // Verify new and old value are not equal
            XCTAssertNotEqual(timerViewModel.newValue,
                              timerViewModel.oldValue)
        
        }
    
}
