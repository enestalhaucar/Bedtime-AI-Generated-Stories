//
//  TaleViewModel.swift
//  BedtimeAIGeneratedStories
//
//  Created by Enes Talha Uçar  on 24.07.2024.
//

import Foundation
import SwiftUI
class TaleViewModel : ObservableObject {
    @Published var tales = Tales()
    
    var token : Int = 3
    
}
