//
//  Slider,Steper,SecureField.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 05.09.24.
//

import SwiftUI
import Foundation

func formattedDate(_ date: Date) -> String {
      let formatter = DateFormatter()
    formatter.dateStyle = .short
      return formatter.string(from: date)
  }

struct WaterTrackerView: View {
    @State private var waterGoal: Double = 2.0    // Slider für tägliches Wasserziel
    @State private var glassesDrunk: Int = 0      // Stepper für getrunkene Gläser
    @State private var password: String = ""      // SecureField für Passwort
    @State private var selectedDate = Date()    
    
    var body: some View {
        
        VStack(spacing: 30) {
            
            // Slider für das tägliche Wasserziel (1 bis 5 Liter)
            VStack {
                Text("Tägliches Wasserziel: \(waterGoal, specifier: "%.1f") Liter")
                    .font(.headline)
                
                Slider(value: $waterGoal, in: 1...5, step: 0.1)
                    .padding(.horizontal)
                
            }
            
            // Stepper für die Anzahl der getrunkenen Gläser Wasser
            VStack {
                Text("Getrunkene Gläser: \(glassesDrunk)")
                    .font(.headline)
                
                Stepper("Anzahl der Gläser", value: $glassesDrunk, in: 0...20)
                    .padding(.horizontal)
                
            }
            
            // SecureField für die Eingabe eines Passworts
            VStack {
                Text("Passwort eingeben:")
                    .font(.headline)
                
                SecureField("Passwort", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
            }
            
           VStack {
                DatePicker("Datum des letzten Arztbesuchs", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                   .datePickerStyle(CompactDatePickerStyle())
                   
                    .padding()
                
              
            }
            
           // Spacer()
        }
        .padding(.vertical)
        .frame(width: 400, height: 900)
        
        .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [.pink, .cyan]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(radius: 10)
        .foregroundColor(.white)
        .font(.headline)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WaterTrackerView()
}


