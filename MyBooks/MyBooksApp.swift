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
    let container: ModelContainer
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(container)
    }
    
    init() {
        let schema = Schema([Book.self])
        let config = ModelConfiguration("Mybooks", schema: schema)
        container = try! ModelContainer(for: schema, configurations: config)
        // let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "MyBooks.store"))
        // container = try! ModelContainer(for: Book.self, configurations: config)
        // print(URL.documentsDirectory.path())
    }
}
