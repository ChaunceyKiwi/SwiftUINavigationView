//
//  SwiftUINavigationViewApp.swift
//  SwiftUINavigationView
//
//  Created by Liu, Chauncey on 2024-07-07.
//

import SwiftUI

@main
struct SwiftUINavigationViewApp: App {
    @State private var persons = Person.sampleData
    var body: some Scene {
        WindowGroup {
            ContentView(persons: $persons)
        }
    }
}
