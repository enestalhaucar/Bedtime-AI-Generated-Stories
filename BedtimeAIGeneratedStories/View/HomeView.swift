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
                
                backgroundView()
                
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
                    
                    Spacer()
                    NavigationLink {
                        PromptOneView()
                    } label: {
                        Text("Generate Tales")
                            .foregroundStyle(.white)
                            .fontWeight(.heavy)
                            .font(.title2)
                            .padding()
                            .background(Color.mint, in: .rect(cornerRadius: 16))
                    }

                    
                   
                    


                        
               
                    
                        
                }.padding(.horizontal,40)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
