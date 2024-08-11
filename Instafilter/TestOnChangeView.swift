//
//  TestOnChangeView.swift
//  Instafilter
//
//  Created by Rodrigo on 11-08-24.
//

import SwiftUI

struct TestOnChangeView: View {
    @State private var blurAmount = 0.0
    
    var body: some View {
        
        Text("Hello World!")
            .blur(radius: blurAmount)
        
        Slider(value: $blurAmount, in: 0...20)
            .onChange(of: blurAmount) { oldValue, newValue in
                print("New value is \(newValue)")
            }
    }
}

#Preview {
    TestOnChangeView()
}
