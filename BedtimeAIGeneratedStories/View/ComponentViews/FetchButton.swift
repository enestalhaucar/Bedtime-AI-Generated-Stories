//
//  FetchButton.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 24.07.2024.
//

import SwiftUI
struct FetchButton: View {
    @State var spin = false
    @State var isPressed = false
    @State var next : CGFloat = 0
    var StartTitle : String
    var EndTitle : String
    @Binding var reset : Bool
    @Binding var loadingResponse: Bool
    @State var hasBeenPressed = false
    var action: () -> Void
    
    var body: some View {
        VStack {
            textAnimation(StartTitle: StartTitle, EndTitle: EndTitle, next: $next, spin: $spin, loadingResponse: $loadingResponse)
                .frame(width: 280, height: 50)
                .background(.black, in: RoundedRectangle(cornerRadius: 16))
                .animation(.spring(duration: 1), value: next)
                .scaleEffect(isPressed ? 1.1 : 1)
                .animation(.spring, value: isPressed)
                .gesture(dragGesture())
        }
        .onChange(of: loadingResponse) { 
            if !$0 {
                withAnimation {
                    next -= 73
                }
                spin = false
            }
        }
    }
    
    func dragGesture() -> some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { _ in
                isPressed = true
            }
            .onEnded { _ in
                action()
                isPressed = false
                if !hasBeenPressed {
                    hasBeenPressed = true
                    withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
                        spin = true
                    }
                    next -= 73
                }
            }
    }
}






struct textAnimation: View {
    var StartTitle: String
    var EndTitle: String
    @Binding var next: CGFloat
    @Binding var spin: Bool
    @Binding var loadingResponse: Bool
    @State var start = false
    
    var body: some View {
        ZStack {
            if next == 0 {
                Text(StartTitle)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .fontDesign(.serif)
                
            } else if spin {
                Circle() // Burada dönen circle animasyonu yerine kullanılacak öğe
                    .strokeBorder(Color.white, lineWidth: 3)
                    .frame(width: 30, height: 30)
                    .rotationEffect(.degrees(spin ? 360 : 0))
                    .animation(spin ? .linear(duration: 2).repeatForever(autoreverses: false) : .default, value: spin)
            } else {
                Text(EndTitle)
                    .foregroundColor(.white)
                    .fontDesign(.serif)
                    .frame(width: 280, height: 50)
                
            }
        }
        .animation(.spring(duration: 1), value: next)
    }
}



