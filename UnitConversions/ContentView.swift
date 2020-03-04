//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gonzalo Gamez on 2/19/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Choice which type
    @State private var typeChoice = 1
    
    //Choice which index unit to start
    @State private var unitConversion = 1
    
    //Choice which index unit to end
    @State private var unitConvert = 1
    
    //Amount duh
    @State private var amount = ""
    
    //Unit types put into an array
    let type = ["Temp", "Length", "Time", "Volume"]
    let tempConversion = ["Celsius", "Fahrenheit", "Kelvin", "", ""]
    let lengthConversion = ["meters", "kilometers", "feet", "yards", "miles"]
    
    
    var convertedUnit: String {
        let initialUnit = Double(amount) ?? 0
        let initialType = Double(typeChoice)
        
        
        //Shorter code to convert temp
        if initialType == 0 && unitConversion == 0{
            let startingUnit = Measurement(value: initialUnit, unit: UnitTemperature.celsius)
            if unitConvert == 0{
                return "\(startingUnit.converted(to: UnitTemperature.celsius))"
            } else if unitConvert == 1{
                return "\(startingUnit.converted(to: UnitTemperature.fahrenheit))"
            } else{
                return "\(startingUnit.converted(to: UnitTemperature.kelvin))"
            }
        }else if initialType == 0 && unitConversion == 1{
            let startingUnit = Measurement(value: initialUnit, unit: UnitTemperature.fahrenheit)
            if unitConvert == 0{
                return "\(startingUnit.converted(to: UnitTemperature.celsius))"
            } else if unitConvert == 1{
                return "\(startingUnit.converted(to: UnitTemperature.fahrenheit))"
            } else{
                return "\(startingUnit.converted(to: UnitTemperature.kelvin))"
            }
        } else if initialType == 0 && unitConversion == 2{
            let startingUnit = Measurement(value: initialUnit, unit: UnitTemperature.kelvin)
            if unitConvert == 0{
                return "\(startingUnit.converted(to: UnitTemperature.celsius))"
            } else if unitConvert == 1{
                return "\(startingUnit.converted(to: UnitTemperature.fahrenheit))"
            } else{
                return "\(startingUnit.converted(to: UnitTemperature.kelvin))"
            }
        }
            
            
        
        
        //Mess to filter out for temp conversion
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
            
            
            //Picker for which type
            Section(header: Text("What unit type do you want to convert?")) {
                Picker("Type", selection:
                $typeChoice) {
                    ForEach(0 ..< type.count) {
                        Text("\(self.type[$0])")
                    }
            }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            
            //Picker for which starting units
            Section(header: Text("What do you want to convert?")) {
                
                Picker("Units", selection:
                $unitConversion) {
                    if typeChoice == 1{
                        ForEach(0 ..< 5) {
                            Text("\(self.lengthConversion[$0])")
                        }
                    } else if typeChoice == 0{
                        ForEach(0 ..< 5) {
                            Text("\(self.tempConversion[$0])")
                        }
                    }
            }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            
            //Textfield to input amount
            Section {
                TextField("Amount", text: $amount)
                    .keyboardType(.decimalPad)
            }
            
            
            //Picker for ending units
            Section(header: Text("What unit do you want to convert to?")){
                Picker("Starting Units", selection: $unitConvert ){
                    if typeChoice == 1{
                        ForEach(0 ..< 5) {
                            Text("\(self.lengthConversion[$0])")
                        }
                    } else if typeChoice == 0{
                        ForEach(0 ..< 5) {
                            Text("\(self.tempConversion[$0])")
                        }
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            
            //Show final conversion
            Section(header: Text("Converted to: ")){
                Text("\(convertedUnit)" )
            }
            
            }
            .navigationBarTitle("Unit Conversions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

