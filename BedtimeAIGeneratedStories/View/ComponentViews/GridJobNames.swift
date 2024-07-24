//
//  GridJobNames.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 23.07.2024.
//

import SwiftUI

struct GridJobNames: View {
    @Binding var selectedJob : jobName
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())]) {
            ForEach(jobName.allCases) { job in
                VStack(spacing: 10) {
                    Image("\(job.rawValue)").resizable()
                        .frame(width: 150, height: 150)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(selectedJob == job ? Color.green : Color.white, lineWidth: 6)
                                .animation(.easeInOut(duration: 0.3), value: selectedJob)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .shadow(radius: 10)
                        
                    
                    Text("\(job.rawValue)")
                        .foregroundStyle(selectedJob == job ? Color.green : Color.white)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .fontDesign(.serif)
                        .font(.system(size: 20))
                }.onTapGesture {
                    withAnimation {
                        selectedJob = job
                    }
                }
            }
        }
    }
}

#Preview {
    GridJobNames(selectedJob: .constant(.Architect))
}
