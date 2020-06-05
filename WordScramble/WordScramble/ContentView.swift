//
//  ContentView.swift
//  WordScramble
//
//  Created by Christian Estrada on 5/29/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let input  = """
            a
            b
            c
            """
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines )
        
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
