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
        let data = List(ingredient1: addConstraintsRegister.ingredient1TxtField.text, ingredient2: addConstraintsRegister.ingredient2TxtField.text, ingredient3: addConstraintsRegister.ingredient3TxtField.text, ingredient4: addConstraintsRegister.ingredient4TxtField.text, ingredient5: addConstraintsRegister.ingredient5TxtField.text, desc: addConstraintsRegister.descTxtField.text, recipeName: addConstraintsRegister.recipeTitleTxtField.text)
        
        return data
    }
    
    @objc func goHomeScreen() {
        validateRegister()
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
            validateRegister()
        }
        
        return true
    }
}
