//
//  ProfileView.swift
//  Instagram
//
//  Created by Kate Kashko on 6.11.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //header
            
            VStack(spacing: 10){
                // pic and stars
                
                HStack{
                    Image("avatar")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack(spacing: 8) {
                        VStack{
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text("Post")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                        
                        VStack{
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 76)

                        
                        VStack{
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                    }

                }
                .padding(.horizontal)
             
                // name and bio
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Name Surname")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Lorem lorem")
                        .font(.footnote)
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
        }
    }
}

#Preview {
    ProfileView()
}
