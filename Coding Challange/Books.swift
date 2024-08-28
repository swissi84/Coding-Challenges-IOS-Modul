//
//  File.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 28.08.24.
//

import Foundation

struct Book {
    var image: String
    var name: String
    var Autor: String
    var Bewertung: Int
    
    init(image: String, name: String, Autor: String, Bewertung: Int) {
        self.image = image
        self.name = name
        self.Autor = Autor
        self.Bewertung = Bewertung
    }
}

let booksList: [Book] = [
Book(image: "test", name: "Der Lustige Mönch", Autor: "Andy", Bewertung: 5),
Book(image: "test1", name: "50 Shades of Grey", Autor: "Alex", Bewertung: 4),
Book(image: "test", name: "50 Shades of Grey", Autor: "Manu", Bewertung: 3),
Book(image: "test1", name: "50 Shades of Grey", Autor: "Bora", Bewertung: 2)
]
