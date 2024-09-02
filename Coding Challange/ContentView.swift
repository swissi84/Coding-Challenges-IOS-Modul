//
//  ContentView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 28.08.24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Books")
                .fontWeight(.heavy)
                .frame(width: 360, height: 80)
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(Color.black)
                .border(Color.red, width: 10)
                .cornerRadius(10)
                .padding(5)
            ScrollView{
                VStack{
                    BookView(book: booksList [0])
                        //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    BookView(book: booksList [1])
                       // .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    BookView(book: booksList [2])
                    BookView(book: booksList [3])
                   
                }
            }
        }
    }
}



