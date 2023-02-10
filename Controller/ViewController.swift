//
//  ViewController.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {

    var internSpecialities = ["IOS", "Android", "Flutter", "Design", "PM", "QA", "Java", "Python", "Ruby", "Golang"]
    
    let topImage = ImageView(imageName: "picture").getImage()
    let bottomView = BottomView(cornerRadius: 32).getBottomView()
    
    let topLabel = Label(labelText: "Стажировка в Surf", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.boldSystemFont(ofSize: 24), numberOfLines: 1).getLabel()
    
    let infoLabel = Label(
        labelText: "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты.",
        fontColor: UIColor(red: 150/255, green: 149/255, blue: 155/255, alpha: 100),
        fontStyle: UIFont.systemFont(ofSize: 14),
        numberOfLines: 0).getLabel()
    
    private let questionLabel = Label(labelText: "Хочешь к нам?", fontColor: UIColor(red: 150/255, green: 149/255, blue: 155/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), numberOfLines: 1).getLabel()
    
    private let sendButton = Button(buttonText: "Отправить заявку", buttonHeight: 60, buttonWidth: 219, buttonColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), buttonTintColor: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 100), cornerRadius: 60/2).getButton()
    
    
    private var chipsView = ChipsCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
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
        let alertView = UIAlertController(title: "Поздравляем!", message: "Ваша заявка успешно отправлена!", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Закрыть", style: .default))
        self.present(alertView, animated: true)
    }

}

