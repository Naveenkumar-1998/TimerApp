//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

struct NumberView: View {
    private var text: String
    private var animationType: AnimationType
    
    init(text: String, animationType: AnimationType) {
        self.text = text
        self.animationType = animationType
    }
    
    var body: some View {
        Text(text)
            .modifier(TimerTextModifier(animationType: animationType))
    }
}
