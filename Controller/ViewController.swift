//
//  ViewController.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var internSpecialities = [String]()
    
    private let topImage = ImageView(imageName: Constants.topImage).getImage()
    private let bottomView = BottomView(cornerRadius: Constants.bottomViewCornerRadius).getBottomView()
    
    private let topLabel = Label(labelContent: CustomLabel(labelText: Constants.headLineText,
                                                           fontColor: Constants.headlinrTextColor,
                                                           fontStyle: Constants.headlineFontStyle,
                                                           numberOfLines: Constants.headlineNumberOfLines)).getLabel()
    
    private let infoLabel = Label(labelContent: CustomLabel(labelText: Constants.infoText,
                                                            fontColor: Constants.infoTextColor,
                                                            fontStyle: Constants.infoTextFontStyle,
                                                            numberOfLines: Constants.infoNumberOfLines)).getLabel()
    
    private let questionLabel = Label(labelContent: CustomLabel(labelText: Constants.questionLabelText,
                                                                fontColor: Constants.questionLabelTextColor,
                                                                fontStyle: Constants.questionLabelFontStyle,
                                                                numberOfLines: Constants.questionLabelNumberOfLines)).getLabel()
    
    private let sendButton = Button(buttonContent: CustomButton(buttonText: Constants.buttonText,
                                                                buttonHeight: Constants.buttonHeight,
                                                                buttonWidth: Constants.buttonWidth,
                                                                buttonColor: Constants.buttonColor,
                                                                buttonTintColor: Constants.buttonTintColor,
                                                                cornerRadius: Constants.buttonCornerRadius)).getButton()
    
    
    private var chipsView = ChipsCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        self.internSpecialities = Constants.internSpecialities
        chipsView.setChipsLabelTextArray(textOfChipsArray: internSpecialities)
        view.backgroundColor = .systemBackground
        view.addSubview(topImage)
        view.addSubview(bottomView)
        bottomView.addSubview(topLabel)
        bottomView.addSubview(infoLabel)
        bottomView.addSubview(chipsView)
        view.addSubview(questionLabel)
        view.addSubview(sendButton)
        sendButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
        setConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate(
            [
                topImage.topAnchor.constraint(equalTo: view.topAnchor, constant: -99),
                topImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -169),
                topImage.heightAnchor.constraint(equalToConstant: 713),
                topImage.widthAnchor.constraint(equalToConstant: 713),
                
                bottomView.topAnchor.constraint(equalTo: topImage.topAnchor, constant: 577),
                bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
                bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
                
                topLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 24),
                topLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
                
                infoLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 12),
                infoLabel.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
                infoLabel.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
                
                questionLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -78),
                questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                
                chipsView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 140),
                chipsView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
                chipsView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: 0),
                chipsView.heightAnchor.constraint(equalToConstant: 44),
                
                sendButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
                sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                sendButton.heightAnchor.constraint(equalToConstant: 60),
                sendButton.widthAnchor.constraint(equalToConstant: 219)
            ]
        )
    }
    
    @objc func addButtonPressed() {
        let alertView = UIAlertController(title: "Поздравляем!",
                                          message: "Ваша заявка успешно отправлена!",
                                          preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Закрыть",
                                          style: .default))
        self.present(alertView, animated: true)
    }
    
}

