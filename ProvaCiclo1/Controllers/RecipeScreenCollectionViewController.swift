//
//  RecipeScreenCollectionView.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class RecipeScreenCollectionViewController: UIViewController {
    
    var customView = RecipeCollectionScreenView()
    var list: [List]?
    private let cellId = "cellId"
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColletionView()
    }
    
    func setColletionView() {
        customView.collectionView.dataSource = self
        customView.collectionView.delegate = self
        customView.collectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func getData(data: List) {
        list = [data]
    }
}

extension RecipeScreenCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let item = list?.count {
            return item
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? RecipeCollectionViewCell
        
        if let item = list?[indexPath.item] {
            cell?.list = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.bounds.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let recipeDetails = RecipeDetailsScreenViewController()
        if let list = self.list {
            recipeDetails.getData(data: list[indexPath.item])
        }
        self.navigationController?.present(recipeDetails, animated: true)
    }
}
