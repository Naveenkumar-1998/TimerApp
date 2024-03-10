//
//  TimerAnimationView.swift
//  TimerApp
//
//  Created by Naveen on 10/03/24.
//

import SwiftUI

struct TimerAnimationView: View {
    
    var timeNewValue: String
    var timeOldValue: String
    var timeViewAnimationDirection: AnimationType
    var timerViewAnimationDegree: Double
    var timerViewAnimtionAngor: UnitPoint
    
    init(timeNewValue: String, timeOldValue: String, timeViewAnimationDirection: AnimationType, timerViewAnimationDegree: Double, timerViewAnimtionAngor: UnitPoint) {
        self.timeNewValue = timeNewValue
        self.timeOldValue = timeOldValue
        self.timeViewAnimationDirection = timeViewAnimationDirection
        self.timerViewAnimationDegree = timerViewAnimationDegree
        self.timerViewAnimtionAngor = timerViewAnimtionAngor
    }
    
    var body: some View {
        ZStack {
            NumberView(text: timeNewValue,
                       animationType: timeViewAnimationDirection)
            NumberView(text: timeOldValue,
                       animationType: timeViewAnimationDirection)
                .modifier(TimerAnimationModifier(animationDegrees: timerViewAnimationDegree,
                                                 animationDirection: timerViewAnimtionAngor))
        }
    }
}


#Preview {
    TimerAnimationView(timeNewValue: "10",
                       timeOldValue: "09",
                       timeViewAnimationDirection: .top,
                       timerViewAnimationDegree: .zero,
                       timerViewAnimtionAngor: .bottom)
}
