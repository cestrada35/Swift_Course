//
//  ContentView.swift
//  TipSplit
//
//  Created by Christian Estrada on 5/9/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmt = "" //@state allows us to use two-way binding
    @State private var  numPeople = 2
    @State private var tipPercent = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    
    var body: some View {
        Form {
            Section{
                TextField("Amount", text: $checkAmt)//two way binding let's us see our changes as we type, neat
                    .keyboardType(.decimalPad)//this modifier makes sense here
            }
            Section{
                Text("$ \(checkAmt)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
