//
//  TimerAnimationModifier.swift
//  TimerApp
//
//  Created by Naveen on 10/03/24.
//

import SwiftUI

struct TimerAnimationModifier: ViewModifier {
    
    private var animationDegrees: Double
    private var animationDirection: UnitPoint
    
    init(animationDegrees: Double, animationDirection: UnitPoint) {
        self.animationDegrees = animationDegrees
        self.animationDirection = animationDirection
    }
    
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(.init(degrees: animationDegrees),
                              axis: (1, 0, 0),
                              anchor: animationDirection,
                              perspective: 0.5)
    }
    
}
