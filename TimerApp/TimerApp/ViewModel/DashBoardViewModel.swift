//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import UIKit
import SwiftUI

class DashBoardViewModel: ObservableObject {
    
    init() {
        startTimer()
    }

    private(set) lazy var flipViewModels = { (0...3).map { _ in TimerViewModel() } }()
    
    var targetDate: Date = Calendar.current.date(byAdding: .day, value: 5, to: Date())!
    var timer: Timer?
    
    /// Method to start the timer.
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.updateTimeComponents()
        }
        RunLoop.current.add(timer!, forMode: .common)
    }
    
    /// Method to stop the current running timer.
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    /// Method to update the day, hour, minutes and seconds values.
    func updateTimeComponents() {
        let currentDate = Date()
        let calendar = Calendar.current
        
        let components = calendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: targetDate)
        
        guard let remainingDays = components.day,
              let remainingHours = components.hour,
              let remainingMinutes = components.minute,
              let remainingSeconds = components.second else {
            return
        }
        
        flipViewModels[0].updatedTime = String(format: "%02d", remainingDays)
        flipViewModels[1].updatedTime = String(format: "%02d", remainingHours)
        flipViewModels[2].updatedTime = String(format: "%02d", remainingMinutes)
        flipViewModels[3].updatedTime = String(format: "%02d", remainingSeconds)
        
        if currentDate >= targetDate {
            stopTimer()
         }
    }

}
