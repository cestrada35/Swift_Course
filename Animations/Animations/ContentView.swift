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
            //self.animationAmt += 1
        }
        .padding()
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(Color.red)
                .scaleEffect(animationAmt)
                .opacity(Double(2-animationAmt))
                .animation(
                    Animation.easeOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        .onAppear{
        self.animationAmt = 2
        }
        //.scaleEffect(animationAmt)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
