//
//  MainViewModel.swift
//  WeatherApplication
//
//  Created by ezgi on 17.10.2021.
//

import UIKit

class MainViewModel {
    
    private var loginStateListener: BooleanBlock?
    
    private let authenticationManager: AuthenticationManagerProtocol
    
    init(authenticationManager: AuthenticationManagerProtocol) {
        self.authenticationManager = authenticationManager
        listenUserState()
    }
    
    private func listenUserState() {
        authenticationManager.isLoggedIn { [weak self] state in
            print("USER STATE : \(state)")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self?.loginStateListener?(state)
            }
        }
    }
    
    func subscribeLoginState(with completion: @escaping BooleanBlock) {
        loginStateListener = completion
    }
    
}
