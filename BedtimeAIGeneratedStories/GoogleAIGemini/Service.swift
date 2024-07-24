//
//  Service.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import Foundation
import SwiftUI
import GoogleGenerativeAI


class Service: ObservableObject {
    let model = GenerativeModel(name: "gemini-1.5-flash", apiKey: APIKey.default)
    @Published var loadingResponse = false
    private var textInput = ""
    @Published var AIResponse = ""
    
    func fetchResponse(input: String) {
        loadingResponse = true
        AIResponse = ""
        Task {
            do {
                textInput = input
                let response = try await model.generateContent(textInput)
                guard let text = response.text else {
                    AIResponse = "Sorry, try again"
                    return
                }
                
                AIResponse = text
                print(AIResponse)
                
                loadingResponse = false
            } catch {
                loadingResponse = false
                AIResponse = "please try again later, \(error.localizedDescription)"
            }
        }
    }
}

