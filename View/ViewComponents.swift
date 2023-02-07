//
//  ViewComponents.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 06.02.2023.
//

import UIKit

class ImageView {
    
    let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    func getImage() -> UIImageView {
        let imageView = {
            let image = UIImageView()
            image.image = UIImage(named: imageName)
            image.translatesAutoresizingMaskIntoConstraints = false
            return image
        } ()
        return imageView
    }
}


class BottomView {
    
    let cornerRadius: CGFloat
    
    init(cornerRadius: CGFloat) {
        self.cornerRadius = cornerRadius
    }
    
    func getBottomView() -> UIView {
        let bottomView = {
            let view = UIView()
            view.backgroundColor = .white
            view.layer.cornerRadius = cornerRadius
            view.contentMode = .scaleAspectFill
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        } ()
        return bottomView
    }
}

class Label {
    
    let labelText: String
    let fontColor: UIColor
    let fontStyle: UIFont
    let numberOfLines: Int
    
    init(labelText: String, fontColor: UIColor, fontStyle: UIFont, numberOfLines: Int) {
        self.labelText = labelText
        self.fontColor = fontColor
        self.fontStyle = fontStyle
        self.numberOfLines = numberOfLines
    }
    
    func getLabel() -> UILabel {
        let label = {
            let label = UILabel()
            label.text = labelText
            label.textColor = fontColor
            label.font = fontStyle
            label.numberOfLines = numberOfLines
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        } ()
        return label
    }
}
    
class Button {
    
    let buttonText: String
    let buttonHeight: Int
    let buttonWidth: Int
    let buttonColor: UIColor
    let buttonTintColor: UIColor
    let cornerRadius: CGFloat
    
    
    init(buttonText: String, buttonHeight: Int, buttonWidth: Int, buttonColor: UIColor, bittonTintColor: UIColor, cornerRadius: CGFloat) {
        self.buttonText = buttonText
        self.buttonHeight = buttonHeight
        self.buttonWidth = buttonWidth
        self.buttonColor = buttonColor
        self.buttonTintColor = bittonTintColor
        self.cornerRadius = cornerRadius
    }
    
    func getButton() -> UIButton {
        let button = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: buttonWidth, height: buttonHeight))
            button.backgroundColor = buttonColor
            button.tintColor = buttonTintColor
            button.setTitle(buttonText, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 16)
            button.layer.cornerRadius = cornerRadius
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        return button
    }
}

class Chips {
    
    let chipsText: String
    let fontColor: UIColor
    let fontStyle: UIFont
    let backgroundColor: UIColor
    let isSelected: Bool
    
    init(chipsText: String, fontColor: UIColor, fontStyle: UIFont, backgroundColor: UIColor, isSelected: Bool) {
        self.chipsText = chipsText
        self.fontColor = fontColor
        self.fontStyle = fontStyle
        self.backgroundColor = backgroundColor
        self.isSelected = isSelected
    }
    
    func getChips() -> UILabel {
        let chips = {
            let chips = UILabel()
            chips.text = chipsText
            chips.textColor = fontColor
            chips.backgroundColor = backgroundColor
            chips.font = fontStyle
            chips.isUserInteractionEnabled = true
            chips.layer.cornerRadius = 12
            chips.textAlignment = .center
            chips.translatesAutoresizingMaskIntoConstraints = false
            return chips
        } ()
        return chips
    }
    
}


