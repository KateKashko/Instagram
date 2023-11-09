//
//  User.swift
//  Instagram
//
//  Created by Kate Kashko on 9.11.2023.
//

import Foundation
struct User: Identifiable, Hashable, Codable{
    let id: String
    var userName: String
    var profileImageURL: String?
    var fullName: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, userName: "Kate", profileImageURL: "1", fullName: "Name Surname0" , bio: "Just nice person" , email: "aaaaa@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Anna", profileImageURL: "2", fullName: "Name Surname1" , bio: "Just nice person" , email: "bbbbb@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Sofia", profileImageURL: "3", fullName: "Name Surname2" , bio: "Just nice person" , email: "ccccc@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Elsa", profileImageURL: "4", fullName: "Name Surname3" , bio: "Just nice person" , email: "ddddd@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Lola", profileImageURL: "5", fullName: "Name Surname4" , bio: "Just nice person" , email: "eeeee@gmail.com" )
    ]
}
