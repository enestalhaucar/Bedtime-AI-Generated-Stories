//
//  PromptThreeView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct ThemePickerView: View {
    @EnvironmentObject var viewModel: TaleViewModel
    @StateObject private var service = Service()
    @State var textInput = ""
    
    // loading
    @State var reset = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView()
                ScrollView {
                    Text("Choose a theme for story")
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.top, 25)
                    
                    StoryThemePicker()
                    
                    FetchButton(StartTitle: "Generate", EndTitle: "Success", reset: $reset, loadingResponse: $service.loadingResponse, action: sendMessage)
                }
            }
            .navigationTitle("✨ Generate Story ✨")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.white.opacity(0.001), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    
    private func sendMessage() {
        textInput = "Hello Gemini, I am someone who wants you to create fairy tales. I never want you to come back to me with anything other than a fairy tale. I want you to produce a good tale that you can produce by following the parameters I will give you. I will also give you the name and wishes of whoever this tale is for. The person who wishes this will become the main hero of the tale. The name of the main hero of the tale is \(viewModel.tales.name). This hero of ours is \(viewModel.tales.age) years old. That's why I want you to write a fairy tale suitable for this age. The gender of our main hero is \(viewModel.tales.gender). I want you to write this tale in \(viewModel.tales.name). You will give me response in this language. The profession of our main hero is \(viewModel.tales.jobName). So add this detail to our tale and you can make a connection from there. And let the theme of our fairy tale be \(viewModel.tales.storyType). Let this fairy tale be a plot and narrative that can have educational effects on our children, thanks to this theme. May our story have a \(viewModel.tales.endOfStory) ending. Let the average reading time of the story be \(viewModel.tales.XMinuteReading) minutes."
        
        service.fetchResponse(input: textInput)
        textInput = ""
    }
}

#Preview {
    ThemePickerView()
        .environmentObject(TaleViewModel())
}
