//
//  CustomStepperView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 05.09.24.
//

import SwiftUI

struct CustomStepperView: View {
    @State private var value: Int = 0
    
    var body: some View {
        HStack {
            Button(action: {
                value -= 1
            }) {
                Image(systemName: "minus")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Circle())
            }
            
            Text("\(value)")
                .font(.title)
                .padding(.horizontal, 20)
            
            Button(action: {
                value += 1
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .clipShape(.buttonBorder)
            }
        }
    }
}

#Preview {
    CustomStepperView()
}

