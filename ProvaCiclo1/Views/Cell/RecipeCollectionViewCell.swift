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
            label.text = list?.ingredient1
            label2.text = list?.ingredient2
            label3.text = list?.ingredient3
            label4.text = list?.ingredient4
            label5.text = list?.ingredient5
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
    
    lazy var label: UILabel = {
        let label1 = UILabel()
        label1.text = "Ingredients 1"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15)
        label1.textAlignment = .center
        label1.layer.cornerRadius = 2
        label1.layer.borderWidth = 0
        
        return label1
    }()
    
    lazy var label2: UILabel = {
        let label1 = UILabel()
        label1.text = "Ingredients 2"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15)
        label1.textAlignment = .center
        label1.layer.borderWidth = 0
        
        return label1
    }()
    
    lazy var label3: UILabel = {
        let label1 = UILabel()
        label1.text = "Ingredients 3"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15)
        label1.textAlignment = .center
        label1.layer.borderWidth = 0
        
        return label1
    }()
    
    lazy var label4: UILabel = {
        let label1 = UILabel()
        label1.text = "Ingredients 4"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15)
        label1.textAlignment = .center
        label1.layer.borderWidth = 0
        
        return label1
    }()
    
    lazy var label5: UILabel = {
        let label1 = UILabel()
        label1.text = "Ingredients 5"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15)
        label1.textAlignment = .center
        label1.layer.borderWidth = 0
        
        return label1
    }()
    
    override func addSubview() {
        addSubview(container)
        container.addSubview(label)
        container.addSubview(label2)
        container.addSubview(label3)
        container.addSubview(label4)
        container.addSubview(label5)
        container.addSubview(image)
    }
    
    override func setConstraint() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 8, bottom: 0, right: 8), size: .init(width: frame.width, height: 10))
        
        label.anchor(top: nil, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 150, bottom: 50, right: 0), size: .init(width: 90, height: 15))
        
        label2.anchor(top: label.bottomAnchor, leading: label.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 90, height: 15))
        
        label3.anchor(top: label2.bottomAnchor, leading: label2.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 90, height: 15))
        
        label4.anchor(top: nil, leading: label.trailingAnchor, bottom: label.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 5, bottom: -10, right: 0), size: .init(width: 90, height: 15))
        
        label5.anchor(top: label4.bottomAnchor, leading: label4.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 5, left: 0, bottom: 0, right: 0), size: .init(width: 90, height: 15))
        
        image.anchor(top: label.topAnchor, leading: nil, bottom: nil, trailing: label.leadingAnchor, padding: .init(top: -25, left: 0, bottom: 0, right: 35), size: .init(width: 100, height: 100))
    }
}
