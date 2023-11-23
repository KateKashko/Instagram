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
        .init(id: NSUUID().uuidString, userName: "Kate", profileImageURL: "1", fullName: "Kate Mate" , bio: "Just nice person" , email: "aaaaa@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Anna", profileImageURL: "2", fullName: "Anna Manna" , bio: "Creative and funny" , email: "bbbbb@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Sofia", profileImageURL: "3", fullName: "Sofia Mofia" , bio: "Love and Pease" , email: "ccccc@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Elsa", profileImageURL: "4", fullName: "Elsa Melsa" , bio: "Working..." , email: "ddddd@gmail.com" ),
        .init(id: NSUUID().uuidString, userName: "Lola", profileImageURL: "5", fullName: "Lola Manola" , bio: "Welcome to my page!" , email: "eeeee@gmail.com" )
    ]
}
