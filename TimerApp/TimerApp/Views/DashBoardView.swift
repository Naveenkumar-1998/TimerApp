
//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct DashBoardView: View {

    var body: some View {
        VStack {
            IntroText()
            DashBoardTimerView()
            SocialMediaInfoView()
        }
    }
}

#Preview {
    DashBoardView()
}


struct IntroText: View {
    var body: some View {
        VStack{
            Text("Naveen")
        }
    }
}

struct DashBoardTimerView: View {
    
    let viewModel = DashBoardViewModel()
    
    var body: some View {
        HStack {
            TimerView(viewModel: viewModel.flipViewModels[0])
            TimerView(viewModel: viewModel.flipViewModels[1])
            TimerView(viewModel: viewModel.flipViewModels[2])
            TimerView(viewModel: viewModel.flipViewModels[3])
            
        }
    }
}

struct SocialMediaInfoView: View {
    var body: some View {
        HStack {
            
        }
    }
}
