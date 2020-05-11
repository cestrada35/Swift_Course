//
//  ContentView.swift
//  Unit Conversion Calculator
//
//  Created by Christian Estrada on 5/11/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State public var inputValue = ""
    @State public var result = 0
    @State private var unit = 0
    @State private var tempUnit = 0
    @State private var lengthUnit = 0
    @State private var timeUnit = 0
    @State private var volumeUnit = 0
    
    
    let unitTypes = ["Temp", "Length", "Time", "Volume"]
    let tempUnits = ["°Celsius","°Fahrenheit","Kelvin"]
    let lengthUnits = ["m.","Km.","Ft", "Yards", "M."]
    let timeUnits = ["Seconds","Minutes","Hours", "Days"]
    let volumeUnits = ["Ml.","Liters", "Pints", "Cups", "Gallons"]
    
    
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
                    }
                    if (unit == 1){
                        Picker("", selection: $lengthUnit) {
                            ForEach(0 ..< lengthUnits.count) {
                                    Text("\(self.lengthUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 2){
                        Picker("", selection: $timeUnit) {
                            ForEach(0 ..< timeUnits.count) {
                                    Text("\(self.timeUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 3){
                        Picker("", selection: $volumeUnit) {
                            ForEach(0 ..< volumeUnits.count) {
                                    Text("\(self.volumeUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    TextField("Enter Value", text: $inputValue)
                    .keyboardType(.decimalPad)
                }
                
                
                Section (header: Text("Select Resulting Unit Type")){
                    if (unit == 0){
                        Picker("", selection: $tempUnit) {
                                ForEach(0 ..< tempUnits.count) {
                                    Text("\(self.tempUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 1){
                        Picker("", selection: $lengthUnit) {
                            ForEach(0 ..< lengthUnits.count) {
                                    Text("\(self.lengthUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 2){
                        Picker("", selection: $timeUnit) {
                            ForEach(0 ..< timeUnits.count) {
                                    Text("\(self.timeUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 3){
                        Picker("", selection: $volumeUnit) {
                            ForEach(0 ..< volumeUnits.count) {
                                    Text("\(self.volumeUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    Text("\(result, specifier: "%.3f")")
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
