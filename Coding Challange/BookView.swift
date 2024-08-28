//
//  BookView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 28.08.24.
//

import SwiftUI

struct BookView: View {
    let book : Book
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Image("\(book.image)")
                    .resizable()
                    .frame(width: 80, height: 100)
                HStack{
                    Divider()
                        .padding(40)
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("\(book.name)")
                            .font(.headline)
                        HStack {
                            Text("Autor: \(book.Autor)")
                            Spacer()
                            Text("\(book.Bewertung) Sterne")
                                .padding()
                        }
                    }
                }
            }
        }
        
        .background(Color.white)
        .fixedSize(horizontal: false, vertical: true)
        .background()
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding()
        
    }
    
}

#Preview {
    BookView(book: booksList[0])
}
