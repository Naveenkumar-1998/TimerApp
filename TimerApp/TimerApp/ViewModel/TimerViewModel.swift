//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

class TimerViewModel: ObservableObject {

    var updatedTime: String? {
        didSet { updateTexts(old: oldValue, new: updatedTime) }
    }

    @Published var newValue: String?
    @Published var oldValue: String?

    @Published var animateTop: Bool = false
    @Published var animateBottom: Bool = false
    
    /// Method to set old and new timer while update text properties.
    /// - Parameters:
    ///   - old: keeps old view for animation
    ///   - new: from updatedTime property
    func updateTexts(old: String?, new: String?) {
        guard old != new else { return }
        oldValue = old
        animateTop = false
        animateBottom = false

        withAnimation(Animation.easeIn(duration: 0.2)) { [weak self] in
            self?.newValue = new
            self?.animateTop = true
        }

        withAnimation(Animation.easeOut(duration: 0.2).delay(0.2)) { [weak self] in
            self?.animateBottom = true
        }
    }
    
}
