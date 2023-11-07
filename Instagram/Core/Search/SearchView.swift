//
//  SearchView.swift
//  Instagram
//
//  Created by Kate Kashko on 6.11.2023.
//

import SwiftUI


struct SearchView: View {
    
    @State private var searchText = ""
    
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...15, id:\.self) { user in
                        HStack {
                            Image("3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Lorem")
                                    .fontWeight(.semibold)
                                Text("Lorem Lorem")
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
