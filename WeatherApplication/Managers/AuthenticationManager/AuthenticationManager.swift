//
//  AuthenticationManager.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation
import FirebaseAuth

class AuthenticationManager: AuthenticationManagerProtocol {
    
    public static let shared = AuthenticationManager()
    
    private init() { }
    
    func isLoggedIn(with completion: @escaping BooleanBlock) {
        Auth.auth().addStateDidChangeListener { auth, user in
            completion((user != nil) ? true : false)
        }
    }

    func signIn(with request: SimpleAuthenticationRequest) {

    }
    
}
