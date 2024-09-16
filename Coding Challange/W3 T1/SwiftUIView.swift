//
//  SwiftUIView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 09.09.24.
//

import SwiftUI







struct SwiftUIView: View {
    var teacherList = ["Leo Lehrer", "Max Mustermann"]
    
    @State var studentList = [
        "Max Mustermann",
        "Beate Beispiel",
        "Anna Musterfrau",
        "Paul Prototyp",
        "Clara Beispiel",
        "David Demo",
        "Eva Exemplar",
        "Felix Versuch",
        "Gina Test",
        "Hans Beispielmann",
    ]
    
    
    var body: some View {
        List {
            Section("Teacher") {
                ForEach(teacherList, id: \.self) { teacher in
                    Text(teacher)
                }
            }
            Section("Students") {
                ForEach(studentList, id: \.self) { student in
                    Text(student)
                }
                .onDelete { offset in
                    studentList.remove(atOffsets: offset)
                }
            }
        }
    }
}
    
    
    #Preview {
    SwiftUIView()
}

                               

