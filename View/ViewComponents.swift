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
    let labelContent: CustomLabel
    init(labelContent: CustomLabel) {
        self.labelContent = labelContent
    }
    
    func getLabel() -> UILabel {
        let label = {
            let label = UILabel()
            label.text = labelContent.labelText
            label.textColor = labelContent.fontColor
            label.font = labelContent.fontStyle
            label.numberOfLines = labelContent.numberOfLines
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        } ()
        return label
    }
}

class Button {
    
    let buttonContent: CustomButton
    init(buttonContent: CustomButton) {
        self.buttonContent = buttonContent
    }
    
    func getButton() -> UIButton {
        let button = {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: buttonContent.buttonWidth, height: buttonContent.buttonHeight))
            button.backgroundColor = buttonContent.buttonColor
            button.tintColor = buttonContent.buttonTintColor
            button.setTitle(buttonContent.buttonText, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: Constants.buttonFontSize)
            button.layer.cornerRadius = buttonContent.cornerRadius
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        return button
    }
}
