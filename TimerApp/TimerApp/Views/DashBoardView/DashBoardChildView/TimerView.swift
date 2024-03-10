
//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct TimerView: View {
    
    var timerType: TimerType
    
    init(timerType: TimerType, viewModel: TimerViewModel) {
        self.timerType = timerType
        self.viewModel = viewModel
    }
    
    @ObservedObject var viewModel: TimerViewModel
    
    var body: some View {
        VStack(spacing: 1) {
            TimerAnimationView(timeNewValue: viewModel.newValue ?? "",
                               timeOldValue: viewModel.oldValue ?? "",
                               timeViewAnimationDirection: .top,
                               timerViewAnimationDegree: self.viewModel.animateTop ? -89 : .zero,
                               timerViewAnimtionAngor: .bottom)
            TimerAnimationView(timeNewValue: viewModel.oldValue ?? "",
                               timeOldValue: viewModel.newValue ?? "",
                               timeViewAnimationDirection: .bottom,
                               timerViewAnimationDegree: self.viewModel.animateBottom ? .zero : 89,
                               timerViewAnimtionAngor: .top)
            TextContent(content: timerType.rawValue,
                        size: 10)
            .padding(.top, 15)
        }
        .fixedSize()
    }
}

#Preview {
    TimerView(timerType: .days,
              viewModel: TimerViewModel())
}

