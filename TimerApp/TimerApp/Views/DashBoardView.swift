//
//  DashBoardView.swift
//  TimerApp
//
//  Created by Softasuave on 09/03/24.
//

import SwiftUI

struct DashBoardView: View {
    var body: some View {
        HStack {
            TimerView(upCommingTime: "01", currentTime: "00")
            TimerView(upCommingTime: "05", currentTime: "06")
            TimerView(upCommingTime: "30", currentTime: "31")
            TimerView(upCommingTime: "60", currentTime: "00")
        }
    }
}

#Preview {
    DashBoardView()
}
