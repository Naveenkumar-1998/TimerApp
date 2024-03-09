
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
            ImageView(imageName: "backGroundImage")
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



struct IntroText: View {
    var body: some View {
        VStack{
            TextContent(content: "W E ' R E  L A U N C H I N G ")
            TextContent(content: "S O O N")
        }
        .padding(.top, 200)
        .padding(.bottom, 50)
    }
}

struct TextContent: View {
    var content: String
    var size: CGFloat = 20
    var color: Color = .white
    var body: some View {
        Text(content)
            .font(.system(size: size))
            .fontWeight(.heavy)
            .foregroundColor(color)
            .fixedSize()
    }
}

struct TimerTextContent: View {
    var content: String
    var body: some View {
        Text(content)
            .font(.system(size: 20))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .fixedSize()
    }
}

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

struct SocialMediaInfoView: View {
    var body: some View {
        HStack(spacing: 30) {
            ImageView(imageName: "facebook")
            ImageView(imageName: "whatsapp")
            ImageView(imageName: "instagram")
        }
        .frame(width: 150, height: 30)
        .padding(.bottom, 50)
    }
}

struct ImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
    }
}
