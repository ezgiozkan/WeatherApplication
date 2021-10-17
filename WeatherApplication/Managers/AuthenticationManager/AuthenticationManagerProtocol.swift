//
//  AuthenticationProtocol.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation
import FirebaseAuth

typealias BooleanBlock = (Bool) -> Void

protocol AuthenticationManagerProtocol {
    
    func isLoggedIn(with completion: @escaping BooleanBlock)
    
}
