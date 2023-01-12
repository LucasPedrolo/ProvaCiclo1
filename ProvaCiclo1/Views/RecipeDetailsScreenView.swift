//
//  RecipeDetailsScreenView.swift
//  ProvaCiclo1
//
//  Created by unicred on 11/01/23.
//

import UIKit

class RecipeDetailsScreenView: BaseView {
    
    var list: List? {
        didSet {
            ingredient1Label.text = " • \(list?.ingredient1 ?? "error")"
            ingredient2Label.text = " • \(list?.ingredient2 ?? "error")"
            ingredient3Label.text = " • \(list?.ingredient3 ?? "error")"
            ingredient4Label.text = " • \(list?.ingredient4 ?? "error")"
            ingredient5Label.text = " • \(list?.ingredient5 ?? "error")"
            descLabel.text = " \(list?.desc ?? "error")"
            recipeTitleLabel.text = list?.recipeName
        }
    }
    
    lazy var recipeTitleLabel: UILabel = {
        let recipeTitle = UILabel()
        recipeTitle.text = ""
        recipeTitle.textColor = .black
        recipeTitle.font = UIFont.systemFont(ofSize: 25)
        recipeTitle.textAlignment = .center
        
        return recipeTitle
    }()
    
    lazy var titleIngredientLabel: UILabel = {
        let title = UILabel()
        title.text = "Ingredients"
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 18)
        
        return title
    }()
    
    lazy var titleDescLabel: UILabel = {
        let title = UILabel()
        title.text = "Description"
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 18)
        
        return title
    }()
    
    lazy var titleQuantityLabel: UILabel = {
        let title = UILabel()
        title.text = "Quantity"
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 18)
        
        return title
    }()
    
    lazy var ingredientTableLabel: UILabel = {
        let table = UILabel()
        table.layer.borderWidth = 1
        table.layer.cornerRadius = 10
        
        return table
    }()
    
    lazy var ingredient1Label: UILabel = {
        let ingredient1 = UILabel()
        ingredient1.text = ""
        ingredient1.textColor = .black
        ingredient1.font = UIFont.systemFont(ofSize: 20)
        
        return ingredient1
    }()
    
    lazy var ingredient2Label: UILabel = {
        let ingredient2 = UILabel()
        ingredient2.text = ""
        ingredient2.textColor = .black
        ingredient2.font = UIFont.systemFont(ofSize: 20)
        
        return ingredient2
    }()
    
    lazy var ingredient3Label: UILabel = {
        let ingredient3 = UILabel()
        ingredient3.text = ""
        ingredient3.textColor = .black
        ingredient3.font = UIFont.systemFont(ofSize: 20)
        
        return ingredient3
    }()
    
    lazy var ingredient4Label: UILabel = {
        let ingredient4 = UILabel()
        ingredient4.text = ""
        ingredient4.textColor = .black
        ingredient4.font = UIFont.systemFont(ofSize: 20)
        
        return ingredient4
    }()
    
    lazy var ingredient5Label: UILabel = {
        let ingredient5 = UILabel()
        ingredient5.text = ""
        ingredient5.textColor = .black
        ingredient5.font = UIFont.systemFont(ofSize: 20)
        
        return ingredient5
    }()
    
    lazy var descLabel: UILabel = {
        let desc = UILabel()
        desc.text = ""
        desc.textColor = .black
        desc.font = UIFont.systemFont(ofSize: 20)
        desc.layer.borderWidth = 1
        desc.layer.cornerRadius = 10
        
        return desc
    }()
    
    override func addSubviews() {
        backgroundColor = .white
        addSubview(ingredient1Label)
        addSubview(ingredient2Label)
        addSubview(ingredient3Label)
        addSubview(ingredient4Label)
        addSubview(ingredient5Label)
        addSubview(descLabel)
        addSubview(ingredientTableLabel)
        addSubview(titleIngredientLabel)
        addSubview(titleDescLabel)
        addSubview(recipeTitleLabel)
    }
    
    override func setConstraints() {
        
        recipeTitleLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 96, bottom: 0, right: 0), size: .init(width: 200, height: 20))
        
        titleIngredientLabel.anchor(top: recipeTitleLabel.bottomAnchor, leading: recipeTitleLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 55, bottom: 0, right: 0), size: .init(width: 250, height: 20))
        
        ingredientTableLabel.anchor(top: titleIngredientLabel.bottomAnchor, leading: titleIngredientLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: -127.5, bottom: 0, right: 0), size: .init(width: 345, height: 300))
        
        ingredient1Label.anchor(top: ingredientTableLabel.topAnchor, leading: ingredientTableLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 5, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient2Label.anchor(top: ingredient1Label.bottomAnchor, leading: ingredient1Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient3Label.anchor(top: ingredient2Label.bottomAnchor, leading: ingredient2Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient4Label.anchor(top: ingredient3Label.bottomAnchor, leading: ingredient3Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient5Label.anchor(top: ingredient4Label.bottomAnchor, leading: ingredient4Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        titleDescLabel.anchor(top: ingredientTableLabel.bottomAnchor, leading: ingredientTableLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 127.5, bottom: 0, right: 0), size: .init(width: 250, height: 20))
        
        descLabel.anchor(top: titleDescLabel.bottomAnchor, leading: titleDescLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 15, left: -130, bottom: 0, right: 0), size: .init(width: 345, height: 220))
        
        
        
        
        
        
        
        
        
//        recipeTitleLabel.anchor(top: nil, leading: descLabel.leadingAnchor, bottom: descLabel.topAnchor, trailing: nil, padding: .init(top: 0, left: 80, bottom: 380, right: 0), size: .init(width: 200, height: 20))
//
//        titleIngredientLabel.anchor(top: nil, leading: ingredient1Label.leadingAnchor, bottom: ingredient1Label.topAnchor, trailing: nil, padding: .init(top: 0, left: 29.75, bottom: 5, right: 0), size: .init(width: 250, height: 20))
//
//        ingredientTableLabel.anchor(top: ingredient1Label.topAnchor, leading: ingredient1Label.leadingAnchor, bottom: ingredient5Label.bottomAnchor, trailing: ingredient1Label.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 400))
//
//        ingredient1Label.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 110, left: 20, bottom: 0, right: 225), size: .init(width: 250, height: 40))
//
//        ingredient2Label.anchor(top: ingredient1Label.bottomAnchor, leading: ingredient1Label.leadingAnchor, bottom: nil, trailing: ingredient1Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
//
//        ingredient3Label.anchor(top: ingredient2Label.bottomAnchor, leading: ingredient2Label.leadingAnchor, bottom: nil, trailing: ingredient2Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
//
//        ingredient4Label.anchor(top: ingredient3Label.bottomAnchor, leading: ingredient3Label.leadingAnchor, bottom: nil, trailing: ingredient3Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
//
//        ingredient5Label.anchor(top: ingredient4Label.bottomAnchor, leading: ingredient4Label.leadingAnchor, bottom: nil, trailing: ingredient4Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
//
//        titleDescLabel.anchor(top: nil, leading: ingredientTableLabel.leadingAnchor, bottom: descLabel.topAnchor, trailing: nil, padding: .init(top: 0, left: 125, bottom: 5, right: 0), size: .init(width: 250, height: 20))
//
//        descLabel.anchor(top: ingredient5Label.bottomAnchor, leading: ingredient5Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 345, height: 200))
    }
}
