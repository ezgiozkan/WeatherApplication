//
//  FavoriteViewBuilder.swift
//  WeatherApplication
//
//  Created by ezgi on 17.10.2021.
//

import Foundation


import UIKit

class FavoriteViewBuilder {
    
    class func build() -> UIViewController {
        let viewModel = FavoriteViewModel()
        let viewController = FavoriteViewController(viewModel: viewModel)
        viewController.title = "Favorite"
        viewController.tabBarItem.image = TabBarImages.favorite.value
        viewController.tabBarItem.selectedImage = TabBarImages.favoriteSelected.value
        return viewController
        
    }
    
}
