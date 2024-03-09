//
//  CustomView.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct ImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
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
