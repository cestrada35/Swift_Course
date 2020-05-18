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
       VStack {
           Text("Gryffindor")
               .blur(radius: 1)
           Text("Hufflepuff")
           Text("Ravenclaw")
           Text("Slytherin")
       }
       .blur(radius: 0)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
