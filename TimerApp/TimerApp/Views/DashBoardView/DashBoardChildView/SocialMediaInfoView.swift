//
//  SocialMediaInfoView.swift
//  TimerApp
//
//  Created by Softasuave on 09/03/24.
//

import SwiftUI

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
