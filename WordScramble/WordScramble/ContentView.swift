//
//  ContentView.swift
//  WordScramble
//
//  Created by Christian Estrada on 5/29/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
   var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                List(usedWords, id: \.self) {
                    Text($0)
                }
            }
            .navigationBarTitle(rootWord)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
