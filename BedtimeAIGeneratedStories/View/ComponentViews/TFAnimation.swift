//
//  TFAnimation.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI

struct TFAnimation: View {
    var title : String
    @Binding var text : String
    @FocusState var isActive
    var body: some View {
        ZStack(alignment: .leading, content: {
            TextField("", text: $text).padding(.leading)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .focused($isActive)
                .background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
                .foregroundStyle(.white)
            
            Text(title).padding(.horizontal)
                .offset(y: (isActive || !text.isEmpty) ? -50 : 0)
                .foregroundStyle(isActive ? .white : .white.opacity(0.6))
                .animation(.spring, value: isActive)
        })
    }
}

#Preview {
    TFAnimation(title: "Name", text: .constant("Enes"))
}
