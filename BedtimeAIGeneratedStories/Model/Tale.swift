//
//  Tale.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import Foundation


struct Tales : Identifiable, Equatable, Hashable {
    let id = UUID().uuidString
    var role : Role
    var name : String
    var jobName : String
    var storyLanguage : Language
    var voiceLanguage : Language
    var age : Int
    var gender : Gender
    var endOfStory : EndOfStory
    var storyType : StoryType
    var additionalCharachters : [String]
    var place : String
    var XMinuteReading : Int
}

enum StoryType: String, CaseIterable, Identifiable, Hashable{
    case funny = "Funny"
    case adventurous = "Adventurous"
    case fantasy = "Fantasy"
    case realistic = "Realistic"
    var id: String { self.rawValue }
    
}
enum EndOfStory:  String, CaseIterable, Identifiable, Hashable{
    case happy = "Happy"
    case sad = "Sad"
    var id: String { self.rawValue }
}
enum Role {
    case user
    case model
}
enum Gender: String, CaseIterable, Identifiable, Hashable {
    case male = "Male"
    case female = "Female"
    case diverse = "Diverse"
    
    var id: String { self.rawValue }
}

enum Language : String, CaseIterable, Identifiable, Hashable {
    var id: String { self.rawValue }
    
    case English = "English"
    case Turkish = "Turkish"
    case German = "German"
    case Spanish = "Spanish"
}

enum jobName : String, CaseIterable, Identifiable, Hashable {
    var id: String {self.rawValue}
    case Superhero = "Superhero"
    case Doctor = "Doctor"
    case Princess = "Princess"
    case RoyalGuard = "Royal Guard"
    case Wizard = "Wizard"
    case Knight = "Knight"
    case Farmer = "Farmer"
    case Fisherman = "Fisherman"
    case Chef = "Chef"
    case Villager = "Villager"
    case Forester = "Forester"
    case Merchant = "Merchant"
    case Blacksmith = "Blacksmith"
    case Hunter = "Hunter"
    case Scholar = "Scholar"
    case Explorer = "Explorer"
    case Sailor = "Sailor"
    case Architect = "Architect"
    case Teacher = "Teacher"
    case Artist = "Artist"
    case Musician = "Musician"
    case Tailor = "Tailor"
    case Cobbler = "Cobbler"
    case Gardener = "Gardener"
    case Postman = "Postman"
    case Carpenter = "Carpenter"
}
