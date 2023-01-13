//
//  RegisterScreenViewModel.swift
//  ProvaCiclo1
//
//  Created by unicred on 12/01/23.
//

import Foundation

class RegisterScreenViewModel {
    
    func dataRecipe(
        ingredient1: String,
        ingredient2: String,
        ingredient3: String,
        ingredient4: String,
        ingredient5: String,
        desc: String,
        recipeName: String) -> List?  {
            
            if ingredient1.isEmpty || ingredient2.isEmpty || ingredient3.isEmpty || ingredient4.isEmpty || ingredient5.isEmpty || desc.isEmpty || recipeName.isEmpty {
                print("Error")
                
                return nil
            } else {
                let recipe = List(ingredient1: ingredient1, ingredient2: ingredient2, ingredient3: ingredient3, ingredient4: ingredient4, ingredient5: ingredient5, desc: desc, recipeName: recipeName)
                
                return recipe
            }
        }
}
