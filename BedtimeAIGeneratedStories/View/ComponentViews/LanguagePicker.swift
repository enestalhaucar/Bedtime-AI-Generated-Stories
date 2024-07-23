//
//  LanguagePicker.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct LanguagePicker: View {
    @State var selectedLanguage : Language
    var body: some View {
        VStack {
            Text("Language")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical,15)
            Picker(selection: $selectedLanguage) {
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
    LanguagePicker(selectedLanguage: .Turkish)
}
