//
//  ProfileView.swift
//  Instagram
//
//  Created by Kate Kashko on 6.11.2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {

            ScrollView{
                //header
                
                VStack(spacing: 10){
                    // pic and stars
                    
                    HStack{
                        Image(user.profileImageURL ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 3, title: "Followers")
                            UserStatView(value: 3, title: "Following")
                        }

                    }
                    .padding(.horizontal)
                 
                    // name and bio
                    
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullName = user.fullName {
                            Text(fullName)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio {
                            Text("Lorem lorem")
                                .font(.footnote)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    // action button
                    
                    Button{
                        
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...15, id: \.self) { index in
                        Image("2")
                            .resizable()
                            .scaledToFill()
                        
                    }
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
