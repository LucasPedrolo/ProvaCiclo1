//
//  RecipeCollectionScreenView.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RecipeCollectionScreenView: BaseView {
    
    lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        
        return collectionView
    }()
    
    override func addSubviews() {
//        collectionView.frame = bounds
        addSubview(collectionView)
    }
    
    override func setConstraints() {
        collectionView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 8, bottom: -10, right: 8), size: .init(width: frame.width, height: frame.height))
    }
}
