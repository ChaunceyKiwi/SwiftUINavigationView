//
//  Person.swift
//  TempApp
//
//  Created by Liu, Chauncey on 2024-07-07.
//

import Foundation

struct Person: Identifiable {
    let id: UUID
    let name: String
    let occupation: String
    
    init(id: UUID = UUID(), name: String, occupation: String) {
        self.id = id
        self.name = name
        self.occupation = occupation
    }
}

extension Person {
    static let sampleData: [Person] = [
        Person(name: "Alice", occupation: "Realtor"),
        Person(name: "Bob", occupation: "Software Engineer"),
        Person(name: "Carol", occupation: "Businesswoman")
    ]
}
