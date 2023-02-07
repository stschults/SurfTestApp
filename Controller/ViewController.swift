//
//  ViewController.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {

    var chipsArray = [UILabel]()
    
    let topImage = ImageView(imageName: "picture").getImage()
    let bottomView = BottomView(cornerRadius: 32).getBottomView()
    
    let topLabel = Label(labelText: "Стажировка в Surf", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.boldSystemFont(ofSize: 24), numberOfLines: 1).getLabel()
    
    let infoLabel = Label(labelText: "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты.", fontColor: UIColor(red: 150/255, green: 149/255, blue: 155/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), numberOfLines: 0).getLabel()
    
    let questionLabel = Label(labelText: "Хочешь к нам?", fontColor: UIColor(red: 150/255, green: 149/255, blue: 155/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), numberOfLines: 1).getLabel()
    
    let sendButton = Button(buttonText: "Отправить заявку", buttonHeight: 60, buttonWidth: 219, buttonColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), bittonTintColor: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 100), cornerRadius: 60/2).getButton()
    
    let chipsIOS = Chips(chipsText: "IOS", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    
    private var chipsCollectionView = ChipsCollectionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        view.backgroundColor = .systemBackground
        chipsArray.append(chipsIOS)
        chipsCollectionView.set(cells: chipsArray)
        view.addSubview(topImage)
        view.addSubview(bottomView)
        bottomView.addSubview(topLabel)
        bottomView.addSubview(infoLabel)
        bottomView.addSubview(chipsCollectionView)
        view.addSubview(questionLabel)
        view.addSubview(sendButton)
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
                
                chipsCollectionView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 140),
                chipsCollectionView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
                chipsCollectionView.heightAnchor.constraint(equalToConstant: 44),
                chipsCollectionView.widthAnchor.constraint(equalToConstant: 480),
                
                sendButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
                sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                sendButton.heightAnchor.constraint(equalToConstant: 60),
                sendButton.widthAnchor.constraint(equalToConstant: 219)
                
            ]
        )
    }

}

