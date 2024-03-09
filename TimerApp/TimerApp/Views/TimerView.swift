
//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct TimerView: View {
    
    init(viewModel: TimerViewModel) {
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
        }
            .fixedSize()
    }
}

#Preview {
    TimerView(viewModel: TimerViewModel())
}

