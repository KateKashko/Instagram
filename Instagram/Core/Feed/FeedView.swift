//
//  FeedView.swift
//  Instagram
//
//  Created by Kate Kashko on 6.11.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { post in
                        FeedCell()
                        
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram_logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 32)
                        
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("message_icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
