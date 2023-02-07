//
//  ChipsCollectionViewCell.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 07.02.2023.
//

import UIKit

class ChipsCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "ChipsCollectionViewCell"
    
    var chips: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        addSubview(chips)

        
        chips.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        chips.topAnchor.constraint(equalTo: topAnchor).isActive = true
        chips.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        chips.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
