import SwiftUI

struct TimerView: View {
    
    private var upCommingTime: String
    private var currentTime: String
    
    init(upCommingTime: String, currentTime: String) {
        self.upCommingTime = upCommingTime
        self.currentTime = currentTime
    }
    
    var body: some View {
        VStack(spacing: 1) {
            ZStack {
                NumberView(text: upCommingTime, animationType: .top)
                NumberView(text: currentTime, animationType: .top)
                    .rotation3DEffect(.init(degrees: true ? -90 : .zero),
                                      axis: (1, 0, 0),
                                      anchor: .top,
                                      perspective: 0.5)
            }
            ZStack {
                NumberView(text: upCommingTime, animationType: .bottom)
                NumberView(text: currentTime, animationType: .bottom)
                    .rotation3DEffect(.init(degrees: true ? 90 : .zero),
                                      axis: (1, 0, 0),
                                      anchor: .top,
                                      perspective: 0.5)
            }
        }
    }
}

#Preview {
    TimerView(upCommingTime: "59", currentTime: "00")
}

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

