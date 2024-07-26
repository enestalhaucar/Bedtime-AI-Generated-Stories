//
//  AIResponseView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 24.07.2024.
//

import SwiftUI

struct AIResponseView: View {
    var response : String
    @StateObject private var service = Service()
    @State var boom = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundView(backgroundImageName: "responsebg")
                    .opacity(0.8)
                
                
                VStack {
                    ScrollView {
                        VStack {
                            Text(response)
                                .foregroundStyle(.white)
                                .fontDesign(.serif)
                                .fontWidth(.expanded)
                                .padding(20)
                                .font(.title3)
                            
                            Spacer()
                        }.padding(45)
                    }
                    Spacer()
                    Rectangle()
                        .frame(height: 20)
                        .opacity(0)
                }
            }.toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: boom ? "bookmark.fill" : "bookmark")
                            .foregroundStyle(.black)
                    })
                }
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        HomeView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                    }

                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "trash")
                    }
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        shareStory(response: response)
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .foregroundStyle(.black)
                 
                }
                
            }.navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    func shareStory(response: String) {
        let activityViewController = UIActivityViewController(activityItems: [response], applicationActivities: nil)
        
        // Geçerli aktif sahneyi al
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = scene.windows.first?.rootViewController {
            rootViewController.present(activityViewController, animated: true, completion: nil)
        } else {
            print("Could not found active window scene.")
        }
    }
}

#Preview {
    AIResponseView(response: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
}
