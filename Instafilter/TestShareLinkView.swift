//
//  TestShareLinkView.swift
//  Instafilter
//
//  Created by Rodrigo on 11-08-24.
//

import SwiftUI

struct TestShareLinkView: View {
    var body: some View {
        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!) {
            Label("Spread the word about Swift", systemImage: "square.and.arrow.up")
        }
        .padding()
        
        let example = Image(.example)
        ShareLink(item: example, preview: SharePreview("Tower", image: example)) {
            Label("Click to share image", systemImage: "building")
        }
    }
}

#Preview {
    TestShareLinkView()
}
