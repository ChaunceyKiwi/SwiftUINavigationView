//
//  ContentView.swift
//  SwiftUINavigationView
//
//  Created by Liu, Chauncey on 2024-07-07.
//

import SwiftUI

struct ContentView: View {
    @State var currPerson: Person = Person.sampleData[0];
    @Binding var persons: [Person];
    
    var body: some View {
        NavigationSplitView {
            List(persons) { person in
                Text(person.name).onTapGesture {
                    currPerson = person
                }
            }
        } detail: {
            PersonView(person: currPerson)
        }
    }
}

#Preview {
    ContentView(persons: .constant(Person.sampleData))
}
