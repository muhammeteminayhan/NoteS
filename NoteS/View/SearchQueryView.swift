//
//  SearchQueryView.swift
//  NoteS
//
//  Created by Muhammet Emin Ayhan on 10.10.2024.
//

import SwiftUI
import SwiftData

struct SearchQueryView<Content: View>: View {
    init(searchText: String, @ViewBuilder content: @escaping ([Note]) -> Content) {
        self.content = content
        
        let isSearchTextEmpty = searchText.isEmpty
        let predicate = #Predicate<Note> {
            return isSearchTextEmpty || $0.title.localizedStandardContains(searchText)
        }
        
        _notes = .init(filter: predicate, sort: [.init(\.dateCreated, order: .reverse)], animation: .snappy)
        
    }
    var content: ([Note]) -> Content
    @Query var notes: [Note]
    var body: some View {
        content(notes)
    }
}

