//
//  ContentView.swift
//  UnitConversions
//
//  Created by Gonzalo Gamez on 2/19/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var unitConversion = 2
    
    let unitConversions = ["Temp", "Length", "Time", "Volume"]
    
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
