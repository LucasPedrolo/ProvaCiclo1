//
//  ViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class HomeScreenViewController: UIViewController {

    var addConstraintsHome = HomeScreenView()
    var list: List?
    
    override func loadView() {
        view = addConstraintsHome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        addConstraintsHome.registerButton.addTarget(self, action: #selector(navigationRegister), for: .touchUpInside)
        addConstraintsHome.seeRecipeButton.addTarget(self, action: #selector(navigationRecipe), for: .touchUpInside)
    }
    
    func getData(data: List) {
        self.list = data
    }
    
    @objc func navigationRegister() {
        let goRegister = RegisterScreenViewController()
        self.navigationController?.pushViewController(goRegister, animated: true)
    }
    
    @objc func navigationRecipe() {
        let goRecipe = RecipeScreenCollectionViewController()
        
        if let list = self.list {
            goRecipe.getData(data: list)
        }
        
        self.navigationController?.pushViewController(goRecipe, animated: true)
    }
}

