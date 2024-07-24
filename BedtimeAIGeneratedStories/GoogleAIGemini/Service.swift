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
    let model = GenerativeModel(name: "gemini-1.5-flash", apiKey: APIKey.default)
    private(set) var loadingResponse = false
    private var textInput = ""
    var AIResponse = ""
    
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
                
                loadingResponse = false
            } catch {
                loadingResponse = false
                AIResponse = "please try again later, \(error.localizedDescription)"
                
            }
        }
    }
}
