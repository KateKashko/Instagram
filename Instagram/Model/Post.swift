//
//  Post.swift
//  Instagram
//
//  Created by Kate Kashko on 9.11.2023.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 123,
            imageUrl: "1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 115,
            imageUrl: "2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 280,
            imageUrl: "3",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 263,
            imageUrl: "4",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUId: NSUUID().uuidString,
            caption: "This is some test caption for now",
            likes: 179,
            imageUrl: "5",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        )
    ]
}
