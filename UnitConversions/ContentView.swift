//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gonzalo Gamez on 2/19/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var unitConversion = 1
    @State private var unitConvert = 1
    
    let unitConversions = ["Celsius", "Fahrenheit", "Kelvin"]
    
    let unitConverted = ["Celsius", "Fahrenheit", "Kelvin"]
    
    
    var body: some View {
    NavigationView {
        Form {
            Section(header: Text("What do you want to convert?")) {
                Picker("Units", selection:
                $unitConversion) {
                    ForEach(0 ..< unitConversions.count) {
                        Text("\(self.unitConversions[$0])")
                    }
            }
                .pickerStyle(SegmentedPickerStyle())
            
            }
            Section(header: Text("What unit do you want to convert to?")){
                Picker("Starting Units", selection: $unitConvert ){
                    ForEach(0 ..< unitConverted.count) {
                        Text("\(self.unitConverted[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            }
            .navigationBarTitle("Tempature Conversions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
