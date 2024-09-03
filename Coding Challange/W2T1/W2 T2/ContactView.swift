//
//  ContactView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 03.09.24.
//

import SwiftUI






struct ContactView: View {
    let contactList : Contact
    
    var body: some View {
        VStack{
            Text("\(contactList.name)   \(contactList.phone)")
                .frame(width: 200, height: 30 )
                .background(Color.blue)
                
                .cornerRadius(10.0)
                .padding()
            
            
        }
    }
}


#Preview {
    ContactView(contactList: contacts[0])
}
