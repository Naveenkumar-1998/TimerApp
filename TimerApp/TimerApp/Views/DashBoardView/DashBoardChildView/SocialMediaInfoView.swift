//
//  SocialMediaInfoView.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct SocialMediaInfoView: View {
    var body: some View {
        HStack(spacing: 30) {
            ImageView(imageName: faceBookImage)
            ImageView(imageName: whatsAppImage)
            ImageView(imageName: instagramImage)
        }
        .frame(width: 150, height: 30)
        .padding(.bottom, 50)
    }
}

#Preview {
    SocialMediaInfoView()
}
