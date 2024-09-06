//
//  SwiftUIView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 04.09.24.
//

import SwiftUI
import Foundation



struct TaskPicker: View {
    @Binding var task: String
    let tasks: [String] =
    ["Work", "Shopping", "Fitness", "Fun"]
    
    var body: some View {
        VStack{
            Picker("Choose", selection: $task) {
                ForEach(tasks, id: \.self){ tasc in
                    Text(tasc)
                }
            }
        }
    }
}

#Preview {
    @State var task: String = "Work"
    return TaskPicker(task: $task)
}
