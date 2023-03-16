//
//  User.swift
//  LogInApp
//
//  Created by Andrey Machulin on 16.03.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Andrey",
            password: "13579",
            person: Person.getPerson()
        )
    }
    
}

struct Person {
    let name: String
    let surname: String
    let aboutMe: String
    
    var welcomeMessame: String {
        "Welcome, \(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Andrey",
            surname: "Machulin",
            aboutMe: "Some text")
    }
    
}
