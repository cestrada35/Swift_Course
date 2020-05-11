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
    
    let tipPercentages = [0, 5, 10, 15, 20]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercent])
        let orderAmount = Double(checkAmt) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section{
                    TextField("Amount", text: $checkAmt)//two way binding let's us see our changes as we type, neat
                        .keyboardType(.decimalPad)//this modifier makes sense to use
                    Picker("Number of people", selection: $numPeople){
                        ForEach(2..<100) {
                            Text("\($0) number of people")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to leave?")){
                    Picker("Tip percentage", selection: $tipPercent) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }.navigationBarTitle("Tip Split")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
