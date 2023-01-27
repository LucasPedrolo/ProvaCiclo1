//
//  RegisterScreenViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RegisterScreenViewController: UIViewController {
    
    var addConstraintsRegister = RegisterScreenView()
    var viewModel = RegisterScreenViewModel()
    
    override func loadView() {
        view = addConstraintsRegister
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDelegate()
        
        addConstraintsRegister.goHomeButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }
    
    func addDelegate() {
        addConstraintsRegister.recipeTitleTxtField.delegate = self
        addConstraintsRegister.ingredient1TxtField.delegate = self
        addConstraintsRegister.ingredient2TxtField.delegate = self
        addConstraintsRegister.ingredient3TxtField.delegate = self
        addConstraintsRegister.ingredient4TxtField.delegate = self
        addConstraintsRegister.ingredient5TxtField.delegate = self
        addConstraintsRegister.descTxtField.delegate = self
    }
    
    @objc func goHomeScreen() {
        let goHome = HomeScreenViewController()
        let validation = viewModel.dataRecipe(
            ingredient1: addConstraintsRegister.ingredient1TxtField.text ?? defString,
            ingredient2: addConstraintsRegister.ingredient2TxtField.text ?? defString,
            ingredient3: addConstraintsRegister.ingredient3TxtField.text ?? defString,
            ingredient4: addConstraintsRegister.ingredient4TxtField.text ?? defString,
            ingredient5: addConstraintsRegister.ingredient5TxtField.text ?? defString,
            desc: addConstraintsRegister.descTxtField.text ?? defString,
            recipeName: addConstraintsRegister.recipeTitleTxtField.text ?? defString)
        
        if  validation != nil {
            goHome.getData(data: validation ?? List())
            navigationController?.pushViewController(goHome, animated: true)
        } else {
            print("error")
        }
    }
}

extension RegisterScreenViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.isEqual(addConstraintsRegister.recipeTitleTxtField) {
            addConstraintsRegister.ingredient1TxtField.becomeFirstResponder()
        }
        if textField.isEqual(addConstraintsRegister.ingredient1TxtField) {
            addConstraintsRegister.ingredient2TxtField.becomeFirstResponder()
        }
        if textField.isEqual(addConstraintsRegister.ingredient2TxtField) {
            addConstraintsRegister.ingredient3TxtField.becomeFirstResponder()
        }
        if textField.isEqual(addConstraintsRegister.ingredient3TxtField) {
            addConstraintsRegister.ingredient4TxtField.becomeFirstResponder()
        }
        if textField.isEqual(addConstraintsRegister.ingredient4TxtField) {
            addConstraintsRegister.ingredient5TxtField.becomeFirstResponder()
        }
        if textField.isEqual(addConstraintsRegister.ingredient5TxtField) {
            addConstraintsRegister.descTxtField.becomeFirstResponder()
        } else {
            addConstraintsRegister.descTxtField.resignFirstResponder()
            goHomeScreen()
        }
        return true
    }
}
