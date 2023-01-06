//
//  List.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class List: NSObject {
    
    var ingredient1: String?
    var ingredient2: String?
    var ingredient3: String?
    var ingredient4: String?
    var ingredient5: String?
    
    init(ingredient1: String?, ingredient2: String?, ingredient3: String?, ingredient4: String?, ingredient5: String?) {
        
        self.ingredient1 = ingredient1
        self.ingredient2 = ingredient2
        self.ingredient3 = ingredient3
        self.ingredient4 = ingredient4
        self.ingredient5 = ingredient5
    }
}
