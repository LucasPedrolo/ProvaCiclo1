//
//  RegisterScreenView.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RegisterScreenView: BaseView {
    
    lazy var ingredient1TxtField: UITextField = {
        let ingredient1 = UITextField()
        ingredient1.placeholder = "First Ingredient"
        ingredient1.borderStyle = UITextField.BorderStyle.roundedRect
        ingredient1.autocorrectionType = UITextAutocorrectionType.no
        ingredient1.keyboardType = UIKeyboardType.default
        ingredient1.returnKeyType = UIReturnKeyType.done
        ingredient1.clearButtonMode = UITextField.ViewMode.whileEditing
        ingredient1.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ingredient1.autocapitalizationType = .none

        return ingredient1
    }()
    
    lazy var ingredient2TxtField: UITextField = {
        let ingredient2 = UITextField()
        ingredient2.placeholder = "Second Ingredient"
        ingredient2.borderStyle = UITextField.BorderStyle.roundedRect
        ingredient2.autocorrectionType = UITextAutocorrectionType.no
        ingredient2.keyboardType = UIKeyboardType.default
        ingredient2.returnKeyType = UIReturnKeyType.done
        ingredient2.clearButtonMode = UITextField.ViewMode.whileEditing
        ingredient2.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ingredient2.autocapitalizationType = .none

        return ingredient2
    }()
    
    lazy var ingredient3TxtField: UITextField = {
        let ingredient3 = UITextField()
        ingredient3.placeholder = "Third Ingredient"
        ingredient3.borderStyle = UITextField.BorderStyle.roundedRect
        ingredient3.autocorrectionType = UITextAutocorrectionType.no
        ingredient3.keyboardType = UIKeyboardType.default
        ingredient3.returnKeyType = UIReturnKeyType.done
        ingredient3.clearButtonMode = UITextField.ViewMode.whileEditing
        ingredient3.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ingredient3.autocapitalizationType = .none

        return ingredient3
    }()
    
    lazy var ingredient4TxtField: UITextField = {
        let ingredient4 = UITextField()
        ingredient4.placeholder = "Fourth Ingredient"
        ingredient4.borderStyle = UITextField.BorderStyle.roundedRect
        ingredient4.autocorrectionType = UITextAutocorrectionType.no
        ingredient4.keyboardType = UIKeyboardType.default
        ingredient4.returnKeyType = UIReturnKeyType.done
        ingredient4.clearButtonMode = UITextField.ViewMode.whileEditing
        ingredient4.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ingredient4.autocapitalizationType = .none

        return ingredient4
    }()
    
    lazy var ingredient5TxtField: UITextField = {
        let ingredient5 = UITextField()
        ingredient5.placeholder = "Fifth Ingredient"
        ingredient5.borderStyle = UITextField.BorderStyle.roundedRect
        ingredient5.autocorrectionType = UITextAutocorrectionType.no
        ingredient5.keyboardType = UIKeyboardType.default
        ingredient5.returnKeyType = UIReturnKeyType.done
        ingredient5.clearButtonMode = UITextField.ViewMode.whileEditing
        ingredient5.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        ingredient5.autocapitalizationType = .none

        return ingredient5
    }()
    
    lazy var descTxtField: UITextField = {
        let desc = UITextField()
        desc.placeholder = "Description"
        desc.borderStyle = UITextField.BorderStyle.roundedRect
        desc.autocorrectionType = UITextAutocorrectionType.no
        desc.keyboardType = UIKeyboardType.default
        desc.returnKeyType = UIReturnKeyType.done
        desc.clearButtonMode = UITextField.ViewMode.whileEditing
        desc.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        desc.autocapitalizationType = .none
        desc.textAlignment = .center
        
        return desc
    }()
    
    lazy var goHomeButton: UIButton = {
        let goHome = UIButton(type: .custom)
        goHome.setTitle("Recipes", for: .normal)
        goHome.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        goHome.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        goHome.setTitleColor(.white, for: .normal)
        goHome.layer.masksToBounds = true
        goHome.layer.cornerRadius = 20
        goHome.layer.borderWidth = 2
        goHome.layer.borderColor = UIColor.black.cgColor
        goHome.backgroundColor = .black
        
        return goHome
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLbl = UILabel()
        titleLbl.text = "Ingredients"
        titleLbl.textColor = .black
        titleLbl.font = UIFont.systemFont(ofSize: 18)
        titleLbl.textAlignment = .center
        
        return titleLbl
    }()

    override func addSubviews() {
        addSubview(ingredient1TxtField)
        addSubview(ingredient2TxtField)
        addSubview(ingredient3TxtField)
        addSubview(ingredient4TxtField)
        addSubview(ingredient5TxtField)
        addSubview(descTxtField)
        addSubview(goHomeButton)
        addSubview(titleLabel)
    }
    
    override func setConstraints() {
        ingredient1TxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 50, left: 20, bottom: 0, right: 20), size: .init(width: 250, height: 40))
        
        ingredient2TxtField.anchor(top: ingredient1TxtField.bottomAnchor, leading: ingredient1TxtField.leadingAnchor, bottom: nil, trailing: ingredient1TxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient3TxtField.anchor(top: ingredient2TxtField.bottomAnchor, leading: ingredient2TxtField.leadingAnchor, bottom: nil, trailing: ingredient2TxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient4TxtField.anchor(top: ingredient3TxtField.bottomAnchor, leading: ingredient3TxtField.leadingAnchor, bottom: nil, trailing: ingredient3TxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient5TxtField.anchor(top: ingredient4TxtField.bottomAnchor, leading: ingredient4TxtField.leadingAnchor, bottom: nil, trailing: ingredient4TxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        descTxtField.anchor(top: ingredient5TxtField.bottomAnchor, leading: ingredient5TxtField.leadingAnchor, bottom: nil, trailing: ingredient5TxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 200))
        
        goHomeButton.anchor(top: ingredient5TxtField.bottomAnchor, leading: ingredient5TxtField.leadingAnchor, bottom: nil, trailing: ingredient5TxtField.trailingAnchor, padding: .init(top: 270, left: 70, bottom: 0, right: 70), size: .init(width: 50, height: 40))
        
        titleLabel.anchor(top: nil, leading: ingredient1TxtField.leadingAnchor, bottom: ingredient1TxtField.topAnchor, trailing: ingredient1TxtField.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 60))
    }
}
