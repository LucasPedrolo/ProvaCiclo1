//
//  RecipeDetailsScreenViewController.swift
//  ProvaCiclo1
//
//  Created by unicred on 09/01/23.
//

import UIKit

class RecipeDetailsScreenViewController: UIViewController {
    
    var list: [List]?
    
    func getIndexPath(index: Int) {
        print("Esse é o indice: ", index)
    }
    
    func getData(data: List) {
        list = [data]
    }
}
