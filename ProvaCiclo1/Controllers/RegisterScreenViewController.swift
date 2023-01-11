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
        
        addConstraintsRegister.descTxtField.delegate = self
        
        addConstraintsRegister.goHomeButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }

    func validateRegister() {
        if addConstraintsRegister.ingredient1TxtField.text == "" || addConstraintsRegister.ingredient2TxtField.text == "" || addConstraintsRegister.ingredient3TxtField.text == "" || addConstraintsRegister.ingredient4TxtField.text == "" || addConstraintsRegister.ingredient5TxtField.text == "" {
            print("Error")
        } else {
            let goHome = HomeScreenViewController()
            goHome.getData(data: dataRecipe())
            navigationController?.pushViewController(goHome, animated: true)
        }
    }
    
    func dataRecipe() -> List {
        let data = List(ingredient1: addConstraintsRegister.ingredient1TxtField.text, ingredient2: addConstraintsRegister.ingredient2TxtField.text, ingredient3: addConstraintsRegister.ingredient3TxtField.text, ingredient4: addConstraintsRegister.ingredient4TxtField.text, ingredient5: addConstraintsRegister.ingredient5TxtField.text, desc: addConstraintsRegister.descTxtField.text)
        
        return data
    }
    
    @objc func goHomeScreen() {
        validateRegister()
    }
}

extension RegisterScreenViewController: UITextFieldDelegate {
    
}
