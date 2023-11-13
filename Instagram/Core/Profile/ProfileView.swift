//
//  ProfileView.swift
//  Instagram
//
//  Created by Kate Kashko on 6.11.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    
    var body: some View {
        
        ScrollView{
            //header
            
            ProfileHeaderView(user: user)
            
            //post grid view
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
