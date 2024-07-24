//
//  PromptThreeView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct PromptThreeView: View {
    @EnvironmentObject var viewModel: TaleViewModel
    @State private var service = Service()
    @State var textInput = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView()
                ScrollView {
                    Text("Choose a theme for story")
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top,25)
                    
                    StoryThemePicker()
                    
                    Button(action: sendMessage) {
                        Text("Fetch Response")
                            .foregroundStyle(.white)
                            .fontDesign(.serif)
                            .fontWeight(.semibold)
                            .padding()
                            .background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
                            
                    }
                }
            }.navigationTitle("✨ Generate Story ✨")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.white.opacity(0.001), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    
    private func sendMessage() {
        Task {
            textInput = "Hello, my name is \(viewModel.tales.name). I am \(viewModel.tales.age) years old and my gender is \(viewModel.tales.gender.rawValue). My story is written in \(viewModel.tales.storyLanguage.rawValue) and narrated in \(viewModel.tales.voiceGender.rawValue). My occupation is \(viewModel.tales.jobName.rawValue) and my story belongs to the \(viewModel.tales.storyType.rawValue) genre. The end of my story is \(viewModel.tales.endOfStory.rawValue). This story takes approximately \(viewModel.tales.XMinuteReading) minutes to read."
            
            service.fetchResponse(input: textInput)
            textInput = ""
        }
    }
}

#Preview {
    PromptThreeView()
        .environmentObject(TaleViewModel())
}
