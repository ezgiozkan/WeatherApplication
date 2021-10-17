//
//  SplashViewModel.swift
//  WeatherApplication
//
//  Created by ezgi on 16.10.2021.
//

import Foundation

class SplashViewModel {
    
    typealias VoidBlock = () -> Void
    
    private var splashFinalizeListener: VoidBlock?
    
    init(completion: @escaping VoidBlock) {
        
    }
    
    func fireApplicationInitiateProcess() {
        
        DispatchQueue.main.asyncAfter(deadline: .now()+3) { [weak self] in
            self?.splashFinalizeListener?()
        }
    }
}

