//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Christian Estrada on 5/14/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.footnote)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

struct Titlize: ViewModifier {
    var text2: String
    func body (content: Content) -> some View{
        ZStack{
            content
            Text(text2)
                .font(.title)
                .foregroundColor(.blue)
                .padding(5)
                .background(Color.yellow)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
    func Titlized(with word: String) -> some View{
        self.modifier(Titlize(text2: word))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
            
            Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Hacking with Swift")
            
            Text("")
            .Titlized(with: "Sample Title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
