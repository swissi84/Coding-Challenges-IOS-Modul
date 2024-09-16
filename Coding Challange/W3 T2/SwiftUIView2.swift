//
//  SwiftUIView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 10.09.24.
//

import SwiftUI

import SwiftUI

struct SwiftUIView2: View {
    @State private var showAlert = false
    @State private var image = "dog.fill"
    
    var body: some View {
        VStack{
            Image(systemName: "\(image)")
                .font(.system(size: 200))
                .frame(height: 250)
            Button("Delete?" , role: .cancel ) {
              showAlert = true
                
            }
            .font(.headline)
            .foregroundColor(.red)
            
            .alert("Delete", isPresented: $showAlert) {
                Button("OK", role: .destructive) {
                    image = ""
                }
                Button("Cancel", role: .cancel) { }
            }
        }
    }
}

#Preview {
    SwiftUIView2()
}

