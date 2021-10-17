//
//  LoginViewBuilder.swift
//  WeatherApplication
//
//  Created by ezgi on 17.10.2021.
//

import UIKit

class LoginViewBuilder {
    
    class func build() -> UIViewController {
        return LoginViewController(viewModel: LoginViewModel())
    }
    
}
