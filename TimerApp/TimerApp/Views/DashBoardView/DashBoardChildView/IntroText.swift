//
//  IntroText.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct IntroText: View {
    var body: some View {
        VStack{
            TextContent(content: launchingText)
            TextContent(content: soonText)
        }
        .padding(.top, 200)
        .padding(.bottom, 50)
    }
}

#Preview {
    IntroText()
}

