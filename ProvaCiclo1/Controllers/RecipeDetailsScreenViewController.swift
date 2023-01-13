//
//  RecipeDetailsScreenViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 09/01/23.
//

import UIKit

class RecipeDetailsScreenViewController: UIViewController {
    
    var addConstraints = RecipeDetailsScreenView()
    
    override func loadView() {
        view = addConstraints
    }
    
    func getData(data: List) {
        addConstraints.list = data
    }
}
