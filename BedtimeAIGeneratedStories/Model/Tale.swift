//
//  Tale.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 22.07.2024.
//

import SwiftUI
import Combine
import Foundation


struct Tales : Identifiable, Equatable, Hashable {
    let id = UUID().uuidString
    var role : Role = .user
    var name : String = ""
    var jobName : jobName = .Teacher
    var storyLanguage : Language = .English
    var voiceGender : VoiceGender = .male
    var age : Int = 5
    var gender : Gender = .male
    var endOfStory : EndOfStory = .happy
    var storyType : StoryType = .CulturalStories
    var XMinuteReading : Int = 5
}

enum StoryType: String, CaseIterable, Identifiable, Hashable{
    case Heroism = "Heroism"
    case MagicAndSorcery = "Magic and Sorcery"
    case Friendship = "Friendship"
    case Family = "Family"
    case Adventure = "Adventure"
    case NatureAndAnimals = "Nature and Animals"
    case Love = "Love"
    case ScienceFiction = "Science Fiction"
    case Horror = "Horror"
    case Comedy = "Comedy"
    case Mythology = "Mythology"
    case FairyTales = "Fairy Tales"
    case TimeTravel = "Time Travel"
    case CulturalStories = "Cultural Stories"
    
    var id: String {self.rawValue}
    
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
enum VoiceGender: String,CaseIterable, Identifiable, Hashable {
    var id: String {self.rawValue}
    case male = "🤵🏻 Male"
    case female = "🤵🏻‍♀️ Female"
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


