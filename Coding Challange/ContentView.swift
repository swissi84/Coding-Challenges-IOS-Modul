//
//  ContentView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 28.08.24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Books Buy")
                .frame(width: 600, height: 80)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(Color.red)
            ScrollView{
                VStack{
                    BookView(book: booksList [0])
                    BookView(book: booksList [1])
                    BookView(book: booksList [2])
                    BookView(book: booksList [3])
                   
                }
            }
        }
    }
}
    #Preview {
    ContentView()
    
}

