//
//  backgroundView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct backgroundView: View {
    var backgroundImageName : String
    var body: some View {
        Image(backgroundImageName)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
        Color.black.opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    backgroundView(backgroundImageName: "backgroundImage")
}
