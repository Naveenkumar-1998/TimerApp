
//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct DashBoardView: View {

    var body: some View {
        ZStack {
            ImageView(imageName: mountImage)
                .edgesIgnoringSafeArea(.all)
            VStack {
                IntroText()
                DashBoardTimerView()
                Spacer()
                SocialMediaInfoView()
            }
        }
    }
}

#Preview {
    DashBoardView()
}



