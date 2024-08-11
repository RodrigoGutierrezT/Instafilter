//
//  TestConfirmationDialogView.swift
//  Instafilter
//
//  Created by Rodrigo on 11-08-24.
//

import SwiftUI

struct TestConfirmationDialogView: View {
    @State private var backgroundColor = Color.white
    @State private var showingConfirmation = false
    
    var body: some View {
        Button("Hello World!") {
            showingConfirmation.toggle()
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .confirmationDialog("Change Background", isPresented: $showingConfirmation) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Select your background color")
        }
    }
}

#Preview {
    TestConfirmationDialogView()
}
