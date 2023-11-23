//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by Kate Kashko on 23.11.2023.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws{
        try await AuthService.shared.createUser(withEmail: email, password: password, userName: username)
    }
}
