//
//  AppDelegate.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        self.window = UIWindow()
        let mainTabBar = SplashViewBuilder.build {
            print("splash finalize")
        }
        
        window?.rootViewController = mainTabBar
        window?.makeKeyAndVisible()
        
        return true
    }

  


}

