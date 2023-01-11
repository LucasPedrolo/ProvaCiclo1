//
//  ListCollectionViewCell.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RecipeCollectionViewCell: BaseCell {
    
    var list: List? {
        didSet {
            recipeNameLabel.text = list?.recipeName
        }
    }
    
    lazy var container: UIView = {
        let test = UIView()
        test.layer.masksToBounds = true
        test.layer.cornerRadius = 10
        test.layer.borderWidth = 2
        test.layer.borderColor = UIColor.black.cgColor
        test.backgroundColor = .white
        return test
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "recipe2")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var recipeNameLabel: UILabel = {
        let recipeName = UILabel()
        recipeName.text = ""
        recipeName.textColor = .black
        recipeName.font = UIFont.systemFont(ofSize: 20)
        recipeName.textAlignment = .center
        recipeName.layer.cornerRadius = 2
        recipeName.layer.borderWidth = 0
        
        return recipeName
    }()
    
    override func addSubview() {
        addSubview(container)
        container.addSubview(image)
        container.addSubview(recipeNameLabel)
    }
    
    override func setConstraint() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 8, bottom: 0, right: 8), size: .init(width: frame.width, height: 10))
        
        image.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: -10, left: 15, bottom: 0, right: 0), size: .init(width: 100, height: 100))
        
        recipeNameLabel.anchor(top: image.topAnchor, leading: image.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 120, bottom: 0, right: 0), size: .init(width: 150, height: 20))
    }
}
