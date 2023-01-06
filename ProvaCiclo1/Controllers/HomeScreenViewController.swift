//
//  ViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class HomeScreenViewController: UIViewController {

    var addConstraintsHome = HomeScreenView()
    
    override func loadView() {
        view = addConstraintsHome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        addConstraintsHome.registerButton.addTarget(self, action: #selector(navigationRegister), for: .touchUpInside)
        addConstraintsHome.seeRecipeButton.addTarget(self, action: #selector(navigationRecipe), for: .touchUpInside)
    }
    
    @objc func navigationRegister() {
        let goRegister = RegisterScreenViewController()
        self.navigationController?.pushViewController(goRegister, animated: true)
    }
    
    @objc func navigationRecipe() {
        let goRecipe = RecipeScreenCollectionViewController()
        self.navigationController?.pushViewController(goRecipe, animated: true)
    }
}

