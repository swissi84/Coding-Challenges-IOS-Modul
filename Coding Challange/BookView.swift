//
//  BookView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 28.08.24.
//

import SwiftUI

struct BookView: View {
    var body: some View {
       
            HStack {
                ZStack(alignment: .leading) {
                    Image("test")
                        .resizable()
                        .frame(width: 80, height: 100)
                    HStack{
                        Divider()
                            .padding(40)
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Der Lustig Guckender Mönch")
                            .font(.headline)
                        Divider()
                        
                        HStack {
                            Text("von Andy")
                            Divider()
                            Spacer()
                            Text("5 Sterne")
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
    BookView()
}
