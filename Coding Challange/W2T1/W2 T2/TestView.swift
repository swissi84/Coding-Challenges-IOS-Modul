//
//  TestView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 03.09.24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack(spacing: -10) {
            
        
            ForEach (contacts) { contact in
                ContactView(contactList: contact) }
            
        }
    }
}
#Preview {
    TestView()
}
