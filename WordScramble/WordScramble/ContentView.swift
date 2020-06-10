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
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // exit if the remaining string is empty
        guard answer.count > 0 else {
            return
        }

        // extra validation to come

        usedWords.insert(answer, at: 0)
        newWord = ""
    }
    
   var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                TextField("Enter your word", text: $newWord, onCommit: addNewWord)
                .autocapitalization(.none)

                List(usedWords, id: \.self) {
                    Image(systemName: "\($0.count).circle")
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


