//
//  ContactView2.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 03.09.24.
//

import SwiftUI


    struct Contact: Identifiable {
        var id: UUID = UUID()
        var name: String
        var age: Int
        var lastOnline:Int
        var phone: String
    }



var contacts = [
    Contact(name: "T-Men", age: 12, lastOnline: 1999, phone: "0177 567 55 66"),
    Contact(name: "Sarah", age: 30, lastOnline: 2000, phone: "0166 557 34 34")
]





   
