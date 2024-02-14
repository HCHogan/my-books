//
//  MyBooksApp.swift
//  MyBooks
//
//  Created by Hank Hogan on 2024/2/14.
//

import SwiftUI
import SwiftData

@main
struct MyBooksApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self, inMemory: false)
    }
    
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
