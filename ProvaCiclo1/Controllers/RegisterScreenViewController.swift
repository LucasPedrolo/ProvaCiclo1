//
//  RegisterScreenViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RegisterScreenViewController: UIViewController {
    
    var addConstraintsRegister = RegisterScreenView()
    
    override func loadView() {
        view = addConstraintsRegister
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraintsRegister.goHomeButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }

    func validateRegister() {
        if addConstraintsRegister.ingredient1TxtField.text == "" || addConstraintsRegister.ingredient2TxtField.text == "" || addConstraintsRegister.ingredient3TxtField.text == "" || addConstraintsRegister.ingredient4TxtField.text == "" || addConstraintsRegister.ingredient5TxtField.text == "" {
            print("Error")
        } else {
            let goHome = HomeScreenViewController()
            navigationController?.pushViewController(goHome, animated: true)
        }
    }
    
    @objc func goHomeScreen() {
        validateRegister()
    }
}
