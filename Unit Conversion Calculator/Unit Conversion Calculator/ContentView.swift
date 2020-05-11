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
    @State private var unit = 0
    @State private var tempUnit = 0
    @State private var tempUnit2 = 0
    @State private var lengthUnit = 0
    @State private var lengthUnit2 = 0
    @State private var timeUnit = 0
    @State private var timeUnit2 = 0
    @State private var volumeUnit = 0
    @State private var volumeUnit2 = 0
    
    
    
    let unitTypes = ["Temp", "Length", "Time", "Volume"]
    let tempUnits = ["°Celsius","°Fahrenheit","Kelvin"]
    let lengthUnits = ["m.","Km.","Ft", "Yards", "M."]
    let timeUnits = ["Seconds","Minutes","Hours", "Days"]
    let volumeUnits = ["Ml.","Liters", "Pints", "Cups", "Gallons"]
    let frac: Double = 9/5
    
    var result: Double {
        let dubs = Double(inputValue) ?? 0
        var resultVal = 0.0
        if (unit == 0){
            if (tempUnit==0 && tempUnit2==0){
                resultVal = dubs
            }
            if (tempUnit==0 && tempUnit2==1){
                resultVal = dubs * frac
                resultVal += 32
            }
            if (tempUnit==0 && tempUnit2==2){
                resultVal = dubs + 273.15
            }
            if (tempUnit==1 && tempUnit2==0){
                resultVal = dubs - 32
                resultVal *= frac
            }
            if (tempUnit==1 && tempUnit2==1){
                resultVal = dubs
            }
            if (tempUnit==1 && tempUnit2==2){
                resultVal -= 32
                resultVal *= frac
                resultVal += 273.15
            }
            if (tempUnit==2 && tempUnit2==0){
                resultVal -= 273.15
            }
            if (tempUnit==2 && tempUnit2==1){
                resultVal -= 273.15
                resultVal *= frac
                resultVal += 32
            }
            if (tempUnit==2 && tempUnit2==2){
                resultVal = dubs
            }
        }
       /* if (unit == 1){
            if (){
                
            }
            else {
                
            }
        }
        if (unit == 2){
            if (){
                
            }
            else {
                
            }
        }
        if (unit == 3){
            if (){
                
            }
            else {
                
            }
        }*/
        return resultVal
    }
    
    
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
                        Picker("", selection: $tempUnit2) {
                                ForEach(0 ..< tempUnits.count) {
                                    Text("\(self.tempUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 1){
                        Picker("", selection: $lengthUnit2) {
                            ForEach(0 ..< lengthUnits.count) {
                                    Text("\(self.lengthUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 2){
                        Picker("", selection: $timeUnit2) {
                            ForEach(0 ..< timeUnits.count) {
                                    Text("\(self.timeUnits[$0])")
                                }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    if (unit == 3){
                        Picker("", selection: $volumeUnit2) {
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
