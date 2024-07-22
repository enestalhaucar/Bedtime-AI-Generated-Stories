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
    
    var body: some View {
        ZStack {
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Color.black.opacity(0.3)
                .ignoresSafeArea()
            
            VStack(spacing:35) {
                TFAnimation(title: "Name", text: $name)
                
                AgeSlider()
                
                
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
                
            }.padding(.horizontal, 45)
        }
    }
    
}



#Preview {
    PromptOneView()
}
