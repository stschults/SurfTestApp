//
//  ChipsCollectionView.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 07.02.2023.
//

import UIKit

class ChipsCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    var cells = [UILabel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .white
        delegate = self
        dataSource = self
        register(ChipsCollectionViewCell.self, forCellWithReuseIdentifier: ChipsCollectionViewCell.reuseID)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(cells: [UILabel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ChipsCollectionViewCell.reuseID, for: indexPath) as! ChipsCollectionViewCell
        cell.chips = cells[indexPath.item]
        return cell
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: 100, height: 100)
//    }

}
