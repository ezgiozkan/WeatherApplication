//
//  BaseViewController.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation

import UIKit

open class BaseViewController<V>: UIViewController {
    
    var viewModel: V!
    
    convenience public init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllerConfigurations()
    }
    
    public func prepareViewControllerConfigurations() {
        view.backgroundColor = .white
    }
    
}
