//
//  Service.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import Foundation
import SwiftUI
import GoogleGenerativeAI

@Observable
class Service {
    var model = GenerativeModel(name: "gemini-pro", apiKey: APIKey.default)
    private(set) var loadingResponse = false
//    private(set) var prompt = Tales(role: .user, name: "Enes", jobName: .Artist, storyLanguage: .Turkish, voiceGender: .male, age: 8, gender: .male, endOfStory: .sad, storyType: .Adventure, XMinuteReading: 10)
    private var textInput = ""
    var AIResponse = ""
    var showStorySheet : Bool = false
    var titleString = "Story"
    
    func fetchResponse(input : String) {
        loadingResponse = true
        AIResponse = ""
        Task {
            do{
                textInput = input
                let response = try await model.generateContent(textInput)
                guard let text = response.text else {
                    textInput = "Sorry, try again"
                    return
                }
                
                textInput = ""
                AIResponse = text
                print(AIResponse)
                showStorySheet = true
                loadingResponse = false
            } catch {
                loadingResponse = false
                AIResponse = "please try again later, \(error.localizedDescription)"
                
            }
        }
    }
}
