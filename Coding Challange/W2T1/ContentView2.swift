//
//  ContentView2.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 02.09.24.
//

import SwiftUI

struct ContentView2: View {
    @State var countDown:Int = 10
    @State var toggle:Bool = true
    
    var body: some View {
        VStack(alignment: .center){
            CountdownView(countDown: $countDown)
            VStack {
                Button(action: {
                    print("Button in HStack gedrückt!")
                    countDown -= 1
                }) {
                    Text("weiter")
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 4)
                        .frame(width: 120, height: 50)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .shadow(color: .black, radius: 5, x: 2, y: 2)
                        .padding(15)
                }
            }
           ZStack {
                Toggle(isOn: $toggle, label: {
                    Text("Firework")
                })
               // .border(.purple)
                .frame(width: 200,height: 200)
                .padding()
            }
            VStack{
                if toggle == true {
                    Divider()
                        .padding()
                    Text("🎆")
                        .font(.largeTitle)
                }
                }
            
        }
        
    }
}

#Preview {
    ContentView2()
}
