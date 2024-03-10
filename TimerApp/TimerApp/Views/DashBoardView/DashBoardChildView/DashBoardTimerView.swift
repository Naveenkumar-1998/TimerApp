//
//  DashBoardTimerView.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct DashBoardTimerView: View {
    
    let viewModel = DashBoardViewModel()
    
    var body: some View {
        HStack {
            TimerView(timerType: .days, viewModel: viewModel.flipViewModels[0])
            TimerView(timerType: .hours, viewModel: viewModel.flipViewModels[1])
            TimerView(timerType: .minutes, viewModel: viewModel.flipViewModels[2])
            TimerView(timerType: .seconds, viewModel: viewModel.flipViewModels[3])
        }
    }
}

#Preview {
    DashBoardTimerView()
}

