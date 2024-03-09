
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
            ZStack {
                NumberView(text: viewModel.newValue ?? "", animationType: .top)
                NumberView(text: viewModel.oldValue ?? "", animationType: .top)
                    .rotation3DEffect(.init(degrees: self.viewModel.animateTop ? -90 : .zero),
                                      axis: (1, 0, 0),
                                      anchor: .bottom,
                                      perspective: 0.5)
            }
            ZStack {
                NumberView(text: viewModel.oldValue ?? "", animationType: .bottom)
                NumberView(text: viewModel.newValue ?? "", animationType: .bottom)
                    .rotation3DEffect(.init(degrees: self.viewModel.animateBottom ? .zero : 90),
                                      axis: (1, 0, 0),
                                      anchor: .top,
                                      perspective: 0.5)
            }
            TextContent(content: timerType.rawValue,
                        size: 10)
            .padding(.top, 20)
        }
            .fixedSize()
    }
}

#Preview {
    TimerView(timerType: .days, viewModel: TimerViewModel())
}

