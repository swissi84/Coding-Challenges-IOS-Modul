//
//  Coding 2.1.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 02.09.24.
//

import SwiftUI

struct CountdownView: View {
   @Binding var countDown: Int 
    
    var body: some View {
        VStack (spacing: 40) {
            Text("Countdown!")
                .font(.title)
            Text(countDown.description)
                .font(.largeTitle)
                .foregroundStyle(.red)
        }
    }
}



