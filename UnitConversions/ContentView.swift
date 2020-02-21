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
    
    var convertedUnit: String {
        let initialUnit = Double(amount) ?? 0
        if unitConversion == 0 && unitConvert == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.meters)
            return "\(startingUnit.converted(to: UnitLength.meters))"
        } else if unitConversion == 0 && unitConvert == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.meters)
            return "\(startingUnit.converted(to: UnitLength.kilometers))"
        } else if unitConversion == 0 && unitConvert == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.meters)
            return "\(startingUnit.converted(to: UnitLength.feet))"
        } else if unitConversion == 0 && unitConvert == 3{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.meters)
            return "\(startingUnit.converted(to: UnitLength.yards))"
        } else if unitConversion == 0 && unitConvert == 4{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.meters)
            return "\(startingUnit.converted(to: UnitLength.miles))"
        } else if unitConversion == 1 && unitConvert == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.kilometers)
            return "\(startingUnit.converted(to: UnitLength.meters))"
        } else if unitConversion == 1 && unitConvert == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.kilometers)
            return "\(startingUnit.converted(to: UnitLength.kilometers))"
        } else if unitConversion == 1 && unitConvert == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.kilometers)
            return "\(startingUnit.converted(to: UnitLength.feet))"
        } else if unitConversion == 1 && unitConvert == 3{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.kilometers)
            return "\(startingUnit.converted(to: UnitLength.yards))"
        } else if unitConversion == 1 && unitConvert == 4{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.kilometers)
            return "\(startingUnit.converted(to: UnitLength.miles))"
        } else if unitConversion == 2 && unitConvert == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.feet)
            return "\(startingUnit.converted(to: UnitLength.meters))"
        } else if unitConversion == 2 && unitConvert == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.feet)
            return "\(startingUnit.converted(to: UnitLength.kilometers))"
        } else if unitConversion == 2 && unitConvert == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.feet)
            return "\(startingUnit.converted(to: UnitLength.feet))"
        } else if unitConversion == 2 && unitConvert == 3{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.feet)
            return "\(startingUnit.converted(to: UnitLength.yards))"
        } else if unitConversion == 2 && unitConvert == 4{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.feet)
            return "\(startingUnit.converted(to: UnitLength.miles))"
        } else if unitConversion == 3 && unitConvert == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.yards)
            return "\(startingUnit.converted(to: UnitLength.meters))"
        } else if unitConversion == 3 && unitConvert == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.yards)
            return "\(startingUnit.converted(to: UnitLength.kilometers))"
        } else if unitConversion == 3 && unitConvert == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.yards)
            return "\(startingUnit.converted(to: UnitLength.feet))"
        } else if unitConversion == 3 && unitConvert == 3{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.yards)
            return "\(startingUnit.converted(to: UnitLength.yards))"
        } else if unitConversion == 3 && unitConvert == 4{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.yards)
            return "\(startingUnit.converted(to: UnitLength.miles))"
        } else if unitConversion == 4 && unitConvert == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.miles)
            return "\(startingUnit.converted(to: UnitLength.meters))"
        } else if unitConversion == 4 && unitConvert == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.miles)
            return "\(startingUnit.converted(to: UnitLength.kilometers))"
        } else if unitConversion == 4 && unitConvert == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.miles)
            return "\(startingUnit.converted(to: UnitLength.feet))"
        } else if unitConversion == 4 && unitConvert == 3{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.miles)
            return "\(startingUnit.converted(to: UnitLength.yards))"
        } else if unitConversion == 4 && unitConvert == 4{
            let startingUnit = Measurement(value: initialUnit, unit: UnitLength.miles)
            return "\(startingUnit.converted(to: UnitLength.miles))"
        }
        return "Calculating!!!"
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
            Section(header: Text("Converted to: ")){
                Text("\(convertedUnit)" )
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
