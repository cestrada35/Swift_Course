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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
