//
//  PromptTwoView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct JobPickerView: View {
    @State private var path = NavigationPath()
    @EnvironmentObject var viewModel: TaleViewModel
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                backgroundView()
                VStack {
                    Text("Choose predefined charachter for your story")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .fontDesign(.serif)
                        .font(.system(size: 20))
                    
                    ScrollView {
                        GridJobNames(selectedJob: $viewModel.tales.jobName)
                        
                        NavigationLink {
                            ThemePickerView()
                        } label: {
                            Text("Next")
                                .foregroundStyle(.white)
                                .fontWeight(.heavy)
                                .font(.title2)
                                .padding()
                                .background(Color.mint, in: .rect(cornerRadius: 16))
                        }
                    }
                }.padding(.horizontal,35)
                    .padding(.top,15)
            }.navigationTitle("✨ Generate Story ✨")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.white.opacity(0.001), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    JobPickerView()
        .environmentObject(TaleViewModel())
}
