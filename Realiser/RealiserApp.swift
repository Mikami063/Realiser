//
//  RealiserApp.swift
//  Realiser
//
//  Created by Mikami Kirigaya on 2023-01-03.
//

import SwiftUI

@main
struct RealiserApp: App {
    
    @State private var showAbout = false
    
    var body: some Scene {
        WindowGroup {
            ContentView(showAbout: $showAbout)
        }.commands {
            CommandMenu("Action->") {
                Button("Add"){
                    print("not implemented yet")
                }.keyboardShortcut("a")
                
                Divider()
                
                Button("About the author") {
                    showAbout=true
                }
            }
        }
    }
}
