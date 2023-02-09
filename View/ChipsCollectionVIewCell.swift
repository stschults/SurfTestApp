//
//  ChipsCollectionViewCell.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 07.02.2023.
//

import UIKit

class ChipsCollectionViewCell: UICollectionViewCell {

    static let reuseID = "ChipsCollectionViewCell"

    var chips = {
        let label = UILabel()
        label.text = "Empty"
        label.numberOfLines = 1
        label.textColor = .black
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.layer.cornerRadius = 12
        label.isUserInteractionEnabled = true
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(chips)

        NSLayoutConstraint.activate(
            [
//                chips.bottomAnchor.constraint(equalTo: bottomAnchor),
//                chips.leadingAnchor.constraint(equalTo: leadingAnchor),
//                chips.trailingAnchor.constraint(equalTo: trailingAnchor),
//                chips.topAnchor.constraint(equalTo: topAnchor),
                chips.heightAnchor.constraint(equalToConstant: frame.height),
                chips.widthAnchor.constraint(equalToConstant: frame.width)
            ]
        )
//        chips.layer.borderColor = UIColor.gray.cgColor
//        chips.layer.borderWidth = 1
        chips.layer.cornerRadius = 12

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setChips(chips: UILabel) {
        self.chips = chips
    }
    
}
