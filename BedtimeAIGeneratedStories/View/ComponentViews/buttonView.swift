//
//  buttonView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI

struct GradientButtonStyle : ButtonStyle {
    let gradientColors = Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink])
    @State var isAnimating = false
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label.font(.title2).bold()
                .foregroundStyle(.white)
                .frame(width: 300, height: 60)
                .background(Color("buttonbg"), in: .rect(cornerRadius: 20))
                .overlay {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, angle: .degrees(isAnimating ? 360 : 0)),lineWidth: 3)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 4)
                            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.black, .black, .clear]), startPoint: .top, endPoint: .bottom))
                    }
                }
        }.onAppear() {
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                isAnimating = true
            }
        }
    }
}


