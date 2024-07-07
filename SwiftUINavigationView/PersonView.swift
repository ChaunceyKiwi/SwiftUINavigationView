//
//  PersonView.swift
//  TempApp
//
//  Created by Liu, Chauncey on 2024-07-07.
//

import SwiftUI

struct PersonView: View {
    let person: Person;
    
    var body: some View {
        VStack {
            Text(person.name).font(.largeTitle)
            Text(person.occupation).font(.headline)
        }
    }
}

#Preview {
    PersonView(person: Person.sampleData[0])
}
