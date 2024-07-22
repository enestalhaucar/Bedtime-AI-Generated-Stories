//
//  ContentView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI



struct HomeView: View {
    @State var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            ZStack {
                
                Image("backgroundImage")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                
                VStack() {
                    Spacer()
                    Text("Bedtime AI")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                    Text("Generated Stories")
                         .foregroundStyle(.white)
                         .font(.largeTitle)
                         .fontWeight(.bold)
                         .fontDesign(.serif)
                         .padding(.bottom,50)
                    
                
//                    Text("  Prepare your little ones for a peaceful night's sleep with our enchanting bedtime stories! Imagine creating a new magical tale every night. The key to sweet dreams is here.")
//                        .foregroundStyle(.white)
//                        .font(.headline)
//                        .fontWeight(.medium)
//                        .fontDesign(.default)
//                        .padding(.bottom,50)
                    
                    Spacer()
                    Button(action: {
                        path.append("PromptOneView")
                    }) {
                        Text("Generate Tales")
                    }.buttonStyle(GradientButtonStyle())
                        .navigationDestination(for: String.self) { value in
                                PromptOneView()
                        }
                    
                   
                    


                        
               
                    
                        
                }.padding(.horizontal,40)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
