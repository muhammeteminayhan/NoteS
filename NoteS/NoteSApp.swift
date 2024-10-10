//
//  NoteSApp.swift
//  NoteS
//
//  Created by Muhammet Emin Ayhan on 9.10.2024.
//

import SwiftUI

@main
struct NoteSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Note.self)
        }
    }
}

