//
//  ContentView.swift
//  SwiftUINavigationView
//
//  Created by Liu, Chauncey on 2024-07-07.
//

import SwiftUI

struct ContentView: View {
    @Binding var persons: [Person];
    @State private var selection: Person? = nil;
    
    var body: some View {
        NavigationSplitView {
            List(persons, id: \.self, selection: $selection) { person in
                NavigationLink(person.name, value: person.name)
            }
        } detail: {
            if let person = selection {
                PersonView(person: person)
            } else {
                Text("Pick a person")
            }
        }
    }
}

#Preview {
    ContentView(persons: .constant(Person.sampleData))
}
