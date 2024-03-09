//
//  IntroText.swift
//  TimerApp
//
//  Created by Softasuave on 09/03/24.
//

import SwiftUI

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

