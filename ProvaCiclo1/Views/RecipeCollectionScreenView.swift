//
//  RecipeCollectionScreenView.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RecipeCollectionScreenView: BaseView {
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.backgroundColor = .white
        
        return collectionView
    }()
    
    lazy var container: UIView = {
        let test = UIView()
        test.backgroundColor = .black
        
        return test
    }()
    
    override func addSubviews() {
//        collectionView.frame = bounds
        addSubview(collectionView)
        
    }
    
    override func setConstraints() {
        collectionView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: frame.width, height: frame.height))
    }
}
