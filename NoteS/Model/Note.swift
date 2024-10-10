//
//  Note.swift
//  NoteS
//
//  Created by Muhammet Emin Ayhan on 9.10.2024.
//

import SwiftUI
import SwiftData

@Model
class Note {
    init(colorString: String, title: String, content: String) {
        self.colorString = colorString
        self.title = title
        self.content = content
    }
    
    var id: String = UUID().uuidString
    var dateCreated: Date = Date()
    var colorString: String
    var title: String
    var content: String
    // View Properties
    var allowsHitTesting: Bool = false
    
    var color: Color {
        Color(colorString)
    }
}

