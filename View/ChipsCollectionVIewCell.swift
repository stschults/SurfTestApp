//
//  ChipsCollectionViewCell.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 07.02.2023.
//

import UIKit

class ChipsCollectionViewCell: UICollectionViewCell {
    
    let chipsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = Constants.deselectedChipsFontColor
        label.font = .systemFont(ofSize: Constants.chipsCornerRadius, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = self.isSelected ? Constants.selectedChipsBackgroundColor : Constants.deselectedChipsBackgroundColor
            chipsLabel.textColor  = self.isSelected ? Constants.selectedChipsFontColor : Constants.deselectedChipsFontColor
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = Constants.deselectedChipsBackgroundColor
        layer.cornerRadius = Constants.chipsCornerRadius
        addSubview(chipsLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate(
            [
                chipsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                chipsLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            ]
        )
    }
    
}
