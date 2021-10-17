//
//  SplashViewController.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation
import UIKit

class SplashViewController: BaseViewController<SplashViewModel> {
    
    private lazy var image: UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = false
        temp.image = PageViewImages.defaultSplashbacground
        temp.contentMode = .scaleAspectFill
        return temp
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
    }
    
    
    }
