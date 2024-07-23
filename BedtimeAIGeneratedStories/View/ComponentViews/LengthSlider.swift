//
//  LengthSlider.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct LengthSlider: View {
    @State private var value : Double = 0.5
    @FocusState var isActive
    var body: some View {
        VStack {
            Text("Story's language \(Int(value * 750 + 100)) - \(Int(value * 750 + 150)) words")
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 55)
                .foregroundStyle(isActive ? .white : .white.opacity(1))
            
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 2.5)
                        .frame(width: geometry.size.width, height: 5)
                        .foregroundStyle(.white)
                        .focused($isActive)
                    
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 4)
                            .foregroundStyle(Color("buttonbg"))
                        Circle()
                            .foregroundColor(.white)
                    }
                    .offset(x: CGFloat(value) * geometry.size.width - 20)
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .onChanged { gesture in
                                updateValue(with: gesture, in: geometry)
                            }
                    )
                }
                
            }.padding(.horizontal)
                .frame(height: 20)
                .padding(.bottom, 15)
        }.background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
    }
    private func updateValue(with gesture: DragGesture.Value, in geometry: GeometryProxy) {
        let newValue = gesture.location.x / geometry.size.width
        value = min(max(Double(newValue),0),1)
    }
}

#Preview {
    LengthSlider()
}
