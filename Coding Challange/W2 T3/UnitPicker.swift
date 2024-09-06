//
//  SwiftUIView2.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 04.09.24.
//

import SwiftUI

enum TempUnit: String, CaseIterable, Identifiable {
    case celsius = "celsius"
    case fahrenheit = "fahrenheit"
    case kelvin = "kelvin"
    
    var id: String { rawValue }
}



struct UnitPicker: View {
    @State private var selectedUnit: TempUnit = .celsius
    
    
    
    var body: some View {
        VStack{
            Picker("Choose", selection: $selectedUnit) {
                ForEach(TempUnit.allCases) { unit in
                    Text(unit.rawValue).tag(unit)
                }
            }
        }
    }
}

#Preview {
    UnitPicker()
}
