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
    @State private var amount = ""
    
    let unitConversions = ["meters", "kilometers", "feet", "yards", "miles"]
    
    let unitConverted = ["meters", "kilometers", "feet", "yards", "miles"]
    
    var convertedUnit: Measurement<UnitLength>  {
        let initialUnit = Double(amount) ?? 0
        let start = UnitLength(symbol: "UnitDuration.\(unitConversions[unitConversion])")
        let startingUnit = Measurement(value: initialUnit, unit: start)
        let end = UnitLength(symbol: "UnitDuration.\(unitConverted[unitConvert])")
        return startingUnit.converted(to: end)
    }
  
    
    
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
            Section {
                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
                
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
