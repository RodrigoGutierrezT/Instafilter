//
//  TestRequestReviewView.swift
//  Instafilter
//
//  Created by Rodrigo on 12-08-24.
//

import StoreKit
import SwiftUI

struct TestRequestReviewView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    TestRequestReviewView()
}
