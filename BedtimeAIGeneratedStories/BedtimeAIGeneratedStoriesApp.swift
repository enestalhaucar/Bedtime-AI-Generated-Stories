//
//  BedtimeAIGeneratedStoriesApp.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI

@main
struct TalesApp: App {
    @StateObject private var viewModel = TaleViewModel()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
