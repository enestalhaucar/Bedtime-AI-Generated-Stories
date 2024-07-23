//
//  PromptOneView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI




struct PromptOneView: View {
    @FocusState var isActive
    @State var email = ""
    @State var name = ""
    @State private var selectedGender : Gender = .female
    @State private var selectedLanguage : Language = .English
    @State private var selectedVoiceLanguage : Language = .English
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 45) {
                        //Name textField
                        TFAnimation(title: "Name", text: $name)
                        // Children Age Slider
                        AgeSlider()
                        // Children Gender Picker
                        GenderPicker(selectedGender: selectedGender)
                        // Desired Language
                        LanguagePicker(selectedLanguage: selectedLanguage)
                        // Desired Voice Language
                        VoiceLanguagePicker(selectedVoiceLanguage: selectedVoiceLanguage)
                        // Desired Story's Length
                        LengthSlider()
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
    PromptOneView()
}
