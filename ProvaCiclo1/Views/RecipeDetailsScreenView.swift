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
            descLabel.text = list?.desc
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
    
    lazy var tableLabel: UILabel = {
        let table = UILabel()
        table.layer.borderWidth = 1
        
        return table
    }()
    
    lazy var ingredient1Label: UILabel = {
        let ingredient1 = UILabel()
        ingredient1.text = ""
        ingredient1.textColor = .black
        ingredient1.font = UIFont.systemFont(ofSize: 18)
        
        return ingredient1
    }()
    
    lazy var ingredient2Label: UILabel = {
        let ingredient2 = UILabel()
        ingredient2.text = ""
        ingredient2.textColor = .black
        ingredient2.font = UIFont.systemFont(ofSize: 18)
        
        return ingredient2
    }()
    
    lazy var ingredient3Label: UILabel = {
        let ingredient3 = UILabel()
        ingredient3.text = ""
        ingredient3.textColor = .black
        ingredient3.font = UIFont.systemFont(ofSize: 18)
        
        return ingredient3
    }()
    
    lazy var ingredient4Label: UILabel = {
        let ingredient4 = UILabel()
        ingredient4.text = ""
        ingredient4.textColor = .black
        ingredient4.font = UIFont.systemFont(ofSize: 18)
        
        return ingredient4
    }()
    
    lazy var ingredient5Label: UILabel = {
        let ingredient5 = UILabel()
        ingredient5.text = ""
        ingredient5.textColor = .black
        ingredient5.font = UIFont.systemFont(ofSize: 18)
        
        return ingredient5
    }()
    
    lazy var descLabel: UILabel = {
        let desc = UILabel()
        desc.text = ""
        desc.textColor = .black
        desc.font = UIFont.systemFont(ofSize: 18)
        desc.layer.borderWidth = 1
        
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
        addSubview(tableLabel)
        addSubview(titleIngredientLabel)
        addSubview(titleDescLabel)
        addSubview(recipeTitleLabel)
    }
    
    override func setConstraints() {
        ingredient1Label.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 110, left: 20, bottom: 0, right: 225), size: .init(width: 250, height: 40))
        
        ingredient2Label.anchor(top: ingredient1Label.bottomAnchor, leading: ingredient1Label.leadingAnchor, bottom: nil, trailing: ingredient1Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient3Label.anchor(top: ingredient2Label.bottomAnchor, leading: ingredient2Label.leadingAnchor, bottom: nil, trailing: ingredient2Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient4Label.anchor(top: ingredient3Label.bottomAnchor, leading: ingredient3Label.leadingAnchor, bottom: nil, trailing: ingredient3Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        ingredient5Label.anchor(top: ingredient4Label.bottomAnchor, leading: ingredient4Label.leadingAnchor, bottom: nil, trailing: ingredient4Label.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        descLabel.anchor(top: ingredient5Label.bottomAnchor, leading: ingredient5Label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 345, height: 200))
        
        tableLabel.anchor(top: ingredient1Label.topAnchor, leading: ingredient1Label.leadingAnchor, bottom: ingredient5Label.bottomAnchor, trailing: ingredient1Label.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 400))
        
        titleIngredientLabel.anchor(top: nil, leading: ingredient1Label.leadingAnchor, bottom: ingredient1Label.topAnchor, trailing: nil, padding: .init(top: 0, left: 25.5, bottom: 5, right: 0), size: .init(width: 250, height: 20))
        
        titleDescLabel.anchor(top: nil, leading: tableLabel.leadingAnchor, bottom: descLabel.topAnchor, trailing: nil, padding: .init(top: 0, left: 125, bottom: 5, right: 0), size: .init(width: 250, height: 20))
        
        recipeTitleLabel.anchor(top: nil, leading: descLabel.leadingAnchor, bottom: descLabel.topAnchor, trailing: nil, padding: .init(top: 0, left: 80, bottom: 380, right: 0), size: .init(width: 200, height: 20))
    }
}
