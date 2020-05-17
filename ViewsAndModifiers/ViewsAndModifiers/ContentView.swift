//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Christian Estrada on 5/14/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Text("Hello World")
       .padding()
       .background(Color.red)
       .padding()
       .background(Color.blue)
       .padding()
       .background(Color.green)
       .padding()
       .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
