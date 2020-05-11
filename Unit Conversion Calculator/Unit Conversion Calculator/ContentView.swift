//
//  ContentView.swift
//  Unit Conversion Calculator
//
//  Created by Christian Estrada on 5/11/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = ""
    @State private var unit = 0
    @State private var tempUnit = 0
    @State private var lengthUnit = 0
    
    let unitTypes = ["Temp", "Length", "Time", "Volume"]
    let tempUnits = ["°Celsius","°Fahrenheit","Kelvin"]
    let lengthUnits = ["Meters","Kilometers","Feet", "Yards", "Miles"]
    
    
    var body: some View {
        NavigationView {
            
            
            
            Form {
                Section (header: Text("Select Unit Type")){
                    Picker("", selection: $unit) {
                            ForEach(0 ..< unitTypes.count) {
                                Text("\(self.unitTypes[$0])")
                            }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section (header: Text("Select Units")){
                    if (unit == 0){
                        Picker("", selection: $tempUnit) {
                                ForEach(0 ..< tempUnits.count) {
                                    Text("\(self.tempUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }else if (unit == 1){
                        Picker("", selection: $lengthUnit) {
                                ForEach(0 ..< lengthUnits.count) {
                                    Text("\(self.lengthUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    
                    TextField("Enter Value", text: $inputValue)
                    .keyboardType(.decimalPad)
                }
                
                
                
            }.navigationBarTitle("Unit Conversion", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
