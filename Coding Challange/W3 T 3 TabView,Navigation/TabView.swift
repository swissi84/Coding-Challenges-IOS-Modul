//
//  TabView.swift
//  Coding Challange
//
//  Created by Eggenschwiler Andre on 11.09.24.
//

import SwiftUI
@main

struct TabView: View {
    var body: some View {
        WindowGroup {
            TabView {
                View1()
                    .tabItem {
                        Label("Start", systemImage: "house")
                    }
                    .badge(3)
                
                View2()
                    .tabItem {
                        Label("Suche", systemImage: "magnifyingglass")
                    }
            }
        }
    }
}
    
    
    #Preview {
    TabView()
}
