//
//  ContentView.swift
//  Animations
//
//  Created by Christian Estrada on 6/16/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmt: CGFloat = 1
    
    var body: some View {
        Button ("Tap Me") {
            self.animationAmt += 1
        }
        .padding()
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .scaleEffect(animationAmt)
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
