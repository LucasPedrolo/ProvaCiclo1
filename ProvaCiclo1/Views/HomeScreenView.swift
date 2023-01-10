//
//  HomeScreenView.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class HomeScreenView: BaseView {
    
    lazy var registerButton: UIButton = {
        let register = UIButton(type: .custom)
        register.setTitle("Register Recipes", for: .normal)
        register.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        register.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        register.setTitleColor(.black, for: .normal)
        register.layer.masksToBounds = true
        register.layer.cornerRadius = 20
        register.layer.borderWidth = 2
        register.layer.borderColor = UIColor.black.cgColor

        return register
    }()
    
    lazy var seeRecipeButton: UIButton = {
        let recipe = UIButton(type: .custom)
        recipe.setTitle("Recipes", for: .normal)
        recipe.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        recipe.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        recipe.setTitleColor(.white, for: .normal)
        recipe.layer.masksToBounds = true
        recipe.layer.cornerRadius = 20
        recipe.layer.borderWidth = 2
        recipe.layer.borderColor = UIColor.black.cgColor
        recipe.backgroundColor = .black
        
        return recipe
    }()
    
    override func setConstraints() {
        registerButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 200, left: 70, bottom: 0, right: 70), size: .init(width: 200, height: 100))
        
        seeRecipeButton.anchor(top: registerButton.bottomAnchor, leading: registerButton.leadingAnchor, bottom: nil, trailing: registerButton.trailingAnchor, padding: .init(top: 80, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 100))
    }
    
    override func addSubviews() {
        addSubview(registerButton)
        addSubview(seeRecipeButton)
    }
}
