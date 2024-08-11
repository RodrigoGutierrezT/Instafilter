//
//  TestContentUnavailableView.swift
//  Instafilter
//
//  Created by Rodrigo on 11-08-24.
//

import SwiftUI

struct TestContentUnavailableView: View {
    var body: some View {
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    TestContentUnavailableView()
}
