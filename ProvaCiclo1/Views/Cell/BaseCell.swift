//
//  BaseCell.swift
//  ProvaCiclo1
//
//  Created by unicred on 06/01/23.
//

import UIKit

class BaseCell: UICollectionViewCell{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setConstraint()
        
        backgroundColor = .black
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder: has not been implemented")
    }
    
    func addSubview() {
        // do nothing
    }
    
    func setConstraint() {
        // do nothing
    }
}
