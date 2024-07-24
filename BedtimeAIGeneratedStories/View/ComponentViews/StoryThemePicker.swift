//
//  StoryThemePicker.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 24.07.2024.
//

import SwiftUI

struct StoryThemePicker: View {
    @State private var selectedTheme : StoryType? = nil
    var body: some View {
        ForEach(StoryType.allCases) { theme in
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("buttonbg"))
                    
                    Group {
                        Circle()
                            .frame(width: selectedTheme == theme ? 800 : 25, height: selectedTheme == theme ? 800 : 25)
                            .foregroundColor(.white)
                            .zIndex(1)
                        Image(systemName: selectedTheme == theme ? "checkmark.circle.fill" : "circle.fill")
                            .font(.system(size: 25))
                            .foregroundStyle(selectedTheme == theme ? .green : .white)
                            .contentTransition(.symbolEffect)
                            .zIndex(3)
                    }
                    .offset(x: 150, y: 0)
                    
                    HStack {
                        VStack {
                            Text(theme.rawValue)
                                .foregroundStyle(selectedTheme == theme ? Color("buttonbg") : .white)
                                .padding()
                                .font(.title3)
                                .fontDesign(.serif)
                        }
                        
                    }.zIndex(2)
                }
                .frame(width: 350, height: 75)
                .clipShape(.rect(cornerRadius: 20))
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.easeOut(duration: 1)) {
                        selectedTheme = theme
                    }
                }
            }.padding(.vertical,5)
            
        }
    }
}

#Preview {
    StoryThemePicker()
}
