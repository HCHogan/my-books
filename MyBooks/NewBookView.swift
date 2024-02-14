//
//  NewBookView.swift
//  MyBooks
//
//  Created by Hank Hogan on 2024/2/14.
//

import SwiftUI
import SwiftData

struct NewBookView: View {
    @Environment (\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    
    @State private var title = ""
    @State private var author = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Book Title", text: $title)
                TextField("Author", text: $author)
                Button("Create") {
                    let newBook = Book(title: title, author: author)
                    context.insert(newBook)
                    dismiss()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .buttonStyle(.borderedProminent)
                .padding(.vertical)
                .disabled(title.isEmpty || author.isEmpty)
                .navigationTitle("New Book")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NewBookView()
}
