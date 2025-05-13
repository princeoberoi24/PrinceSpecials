//
//  UserAuthentication.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import Foundation

class UserAuthentication: ObservableObject {
    
@Published var isLoggedIn = false

func register(username: String, password: String) {
    // Implement registration logic here (e.g., API call)
    // On success:
    isLoggedIn = true
}

func login(username: String, password: String) {
    // Implement login logic here (e.g., API call)
    // On success:
    isLoggedIn = true
}

func logout() {
    isLoggedIn = false
}

}
