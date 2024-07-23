//
//  SegmentedPicker.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI

struct GenderPicker: View {
    @State var selectedGender : Gender 
    
    var body: some View {
        VStack {
            Text("Gender")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical,15)
                
            Picker(selection: $selectedGender) {
                ForEach(Gender.allCases) { gender in
                    Text(gender.rawValue).foregroundStyle(.white)
                        .tag(gender)
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
    GenderPicker(selectedGender: .male)
}
