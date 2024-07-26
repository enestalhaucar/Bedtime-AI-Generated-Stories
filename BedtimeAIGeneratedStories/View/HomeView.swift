//
//  ContentView.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI



struct HomeView: View {
    @State var path = NavigationPath()
    @State var showSettings : Bool = false
    @StateObject var viewModel = TaleViewModel()
    var body: some View {
        NavigationStack(path: $path){
            ZStack {
                backgroundView(backgroundImageName: "backgroundImage")
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
                        PersonalInfoView()
                    } label: {
                        Text("Generate Tales")
                            .foregroundStyle(.white)
                            .fontWeight(.heavy)
                            .font(.title2)
                            .padding()
                            .background(Color.mint, in: .rect(cornerRadius: 16))
                    }
                }.sheet(isPresented: $showSettings){
                    Text("Hello")
                }
                .padding(.horizontal,40)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink {
                                
                            } label: {
                                HStack {
                                    Text("\(viewModel.token)")
                                        .foregroundStyle(.white)
                                        .font(.title2)
                                    Image("token")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                }.padding(.horizontal,10)
                                    .padding(.vertical,5)
                                    .background(.gray, in: .rect(cornerRadius: 16))
                            }

                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink {
                                
                            } label: {
                                Image(systemName: "bookmark.fill")
                                    .foregroundStyle(.green)
                                    .font(.system(size: 20))
                            }

                        }
                        
                        ToolbarItem(placement: .topBarLeading) {
                            Button(action: {
                                showSettings = true
                            }, label: {
                                Image(systemName: "gear")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 20))
                            })
                        }
                        
                    }
            }
        }.environmentObject(TaleViewModel())
    }
}

#Preview {
    HomeView()
        .environmentObject(TaleViewModel())
}
