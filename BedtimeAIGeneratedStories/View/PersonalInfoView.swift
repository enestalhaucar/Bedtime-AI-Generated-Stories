//
//  PromptOneView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI




struct PersonalInfoView: View {
    @FocusState var isActive
    @EnvironmentObject var viewModel: TaleViewModel
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                backgroundView(backgroundImageName: "backgroundImage")
                ScrollView {
                    VStack(spacing: 45) {
                        //Name textField
                        TFAnimation(title: "Name", text: $viewModel.tales.name)
                        // Children Age Slider
                        AgeSlider(value: Binding(
                            get: { Double(viewModel.tales.age) / 8.0 },
                            set: { viewModel.tales.age = Int($0 * 8.0) }
                        ))
                        // Children Gender Picker
                        GenderPicker(selectedGender: $viewModel.tales.gender)
                        // Desired Language
                        LanguagePicker(selectedLanguage: $viewModel.tales.storyLanguage)
                        // Desired Voice Language
                        VoiceGenderPicker(selectedVoiceGender: $viewModel.tales.voiceGender)
                        // Desired Story's Length
                        LengthSlider(value: Binding(
                            get: { Double(viewModel.tales.XMinuteReading) / 8.0 },
                            set: { viewModel.tales.XMinuteReading = Int($0 * 8.0) }
                        ))
                        
                        NavigationLink {
                            JobPickerView()
                        } label: {
                            Text("Next")
                                .foregroundStyle(.white)
                                .fontWeight(.heavy)
                                .font(.title2)
                                .padding()
                                .background(Color.mint, in: .rect(cornerRadius: 16))
                        }
                    }.padding(25)
                }
            }.navigationTitle("✨ Generate Story ✨")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.white.opacity(0.001), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    PersonalInfoView()
        .environmentObject(TaleViewModel())
}
