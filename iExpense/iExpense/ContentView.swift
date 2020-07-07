//
//  ContentView.swift
//  iExpense
//
//  Created by Christian Estrada on 7/3/20.
//  Copyright © 2020 Burt Inc. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String

    var body: some View {
       Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
@State private var showingSheet = false
    
   var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Burt")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
