//
//  MainViewController.swift
//  WeatherApplication
//
//  Created by ezgi on 17.10.2021.
//

import UIKit

extension Selector {
    static let testButtonTapped = #selector(MainViewController.testButtonAction)
}

class MainViewController: BaseViewController<MainViewModel> {
    
    private lazy var test: UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.addTarget(self, action: .testButtonTapped, for: .touchUpInside)
        temp.setTitle("PUSH", for: .normal)
        //temp.setTitleColor(.black, for: .normal)
        return temp
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
        view.backgroundColor = .green
        
        addTestButton()
        addViewModelListeners()
        
    }
    
    private func addTestButton() {
        view.addSubview(test)
        
        NSLayoutConstraint.activate([
        
            test.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            test.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
    
    private func addViewModelListeners() {
        viewModel.subscribeLoginState { [weak self] state in
            self?.userLoginStateHandler(with: state)
        }
    }
    
    private func userLoginStateHandler(with value: Bool) {
        guard !value else { return }
        present(LoginViewBuilder.build(), animated: true, completion: nil)
    }
    
    @objc func testButtonAction(_ sender: UIButton) {
        print("bidibidi")
    }
    
}
