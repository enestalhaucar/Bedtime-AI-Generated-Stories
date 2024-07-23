//
//  backgroundView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct backgroundView: View {
    var body: some View {
        Image("backgroundImage")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
        Color.black.opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    backgroundView()
}
