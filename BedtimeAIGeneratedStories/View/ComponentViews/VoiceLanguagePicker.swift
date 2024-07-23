//
//  VoiceLanguagePicker.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct VoiceLanguagePicker: View {
    @State var selectedVoiceLanguage : Language
    var body: some View {
        VStack {
            Text("Voice Language")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical,15)
            Picker(selection: $selectedVoiceLanguage) {
                ForEach(Language.allCases) { lang in
                    Text(lang.rawValue)
                        .foregroundStyle(.white)
                        .tag(lang)
                    
                }
            } label: {
                
            }.pickerStyle(SegmentedPickerStyle())
                .background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
                    .padding(.horizontal)
                    .padding(.bottom,20)

            
        }.background(.ultraThinMaterial, in: .rect(cornerRadius: 16))
    }
}

#Preview {
    VoiceLanguagePicker(selectedVoiceLanguage: .Turkish)
}
