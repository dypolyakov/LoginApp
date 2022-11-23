//
//  Person.swift
//  LoginApp
//
//  Created by Дмитрий Поляков on 21.11.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Dima",
            password: "123",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let photo: String
    let sex: String
    let age: Int
    let education: String
    let hobby: String
    
    static func getPerson() -> Person {
        Person(
            firstName: "Dmitry",
            lastName: "Polyakov",
            photo: "dmitry",
            sex: "Male",
            age: 32,
            education: "Higher",
            hobby: "Swift"
        )
    }
}
