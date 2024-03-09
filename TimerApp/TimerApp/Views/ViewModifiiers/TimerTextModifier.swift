//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct TimerTextModifier: ViewModifier {
    
    private var animationType: AnimationType
    
    init(animationType: AnimationType) {
        self.animationType = animationType
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 40))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .fixedSize()
            .padding(animationType.padding, -20)
            .frame(width: 40, height: 25, alignment: animationType.alignment)
            .padding(animationType.paddingEdges, 10)
            .clipped()
            .background(Color.black)
            .cornerRadius(4)
            .padding(animationType.padding, -4.5)
            .clipped()
    }
    
}
