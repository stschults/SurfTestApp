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
        label.textColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = self.isSelected ? UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100) : UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
            chipsLabel.textColor  = self.isSelected ? UIColor(red: 1, green: 1, blue: 1, alpha: 100) : UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
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
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
        layer.cornerRadius = 12
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
