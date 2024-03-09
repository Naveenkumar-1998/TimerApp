//
//  TimerAppApp.swift
//  TimerApp
//
//  Created by Naveen on 09/03/24.
//

import SwiftUI

enum AnimationType {
    case top
    case bottom
    
    var padding: Edge.Set {
        switch self {
        case .top:
            return .bottom
        case .bottom:
            return .top
        }
    }

    var paddingEdges: Edge.Set {
        switch self {
        case .top:
            return [.top, .leading, .trailing]
        case .bottom:
            return [.bottom, .leading, .trailing]
        }
    }

    var alignment: Alignment {
        switch self {
        case .top:
            return .bottom
        case .bottom:
            return .top
        }
    }
}

enum TimerType: String {
   case days = "DAYS"
    case hours = "HOURS"
    case minutes = "MINUTES"
    case seconds = "SECONDS"
}
