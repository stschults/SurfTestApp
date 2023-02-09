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
    
    let sendButton = Button(buttonText: "Отправить заявку", buttonHeight: 60, buttonWidth: 219, buttonColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), buttonTintColor: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 100), cornerRadius: 60/2).getButton()
    
    let chipsIOS = Chips(chipsText: "IOS", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsAndriod = Chips(chipsText: "Android", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsFlutter = Chips(chipsText: "Flutter", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsJava = Chips(chipsText: "Java", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsQA = Chips(chipsText: "QA", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsPM = Chips(chipsText: "PM", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsGolang = Chips(chipsText: "Golang", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsPython = Chips(chipsText: "Python", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsDesign = Chips(chipsText: "Design", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    let chipsRuby = Chips(chipsText: "Ruby", fontColor: UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100), fontStyle: UIFont.systemFont(ofSize: 14), backgroundColor: UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100), isSelected: false).getChips()
    
    //private var chipsView = ChipsCollectionView()
    var chipsView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: 800, height: 44)
        scrollView.contentSize = CGSize(width: 355, height: 44)
        scrollView.alwaysBounceHorizontal = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    } ()
    
    var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        contentView.frame.size = CGSize(width: 355, height: 44)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    } ()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    
    } ()
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        view.backgroundColor = .systemBackground
        chipsArray.append(chipsIOS)
        chipsArray.append(chipsAndriod)
        chipsArray.append(chipsFlutter)
        chipsArray.append(chipsJava)
        chipsArray.append(chipsPM)
        chipsArray.append(chipsQA)
        chipsArray.append(chipsPython)
        chipsArray.append(chipsGolang)
        chipsArray.append(chipsRuby)
        chipsArray.append(chipsDesign)
        
        view.addSubview(topImage)
        view.addSubview(bottomView)
        bottomView.addSubview(topLabel)
        bottomView.addSubview(infoLabel)
        bottomView.addSubview(chipsView)
        chipsView.addSubview(contentView)
        contentView.addSubview(stackView)
        for chips in chipsArray {
            stackView.addArrangedSubview(chips)
        }
        print(stackView.arrangedSubviews)
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
                
                chipsView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 140),
                chipsView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
                chipsView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
                chipsView.heightAnchor.constraint(equalToConstant: 44),
                
                contentView.topAnchor.constraint(equalTo: chipsView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: chipsView.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: chipsView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: chipsView.bottomAnchor),
                contentView.widthAnchor.constraint(equalToConstant: 810),
                
                stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                
                sendButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
                sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                sendButton.heightAnchor.constraint(equalToConstant: 60),
                sendButton.widthAnchor.constraint(equalToConstant: 219)
                
            ]
        )
        
        for view in stackView.arrangedSubviews {
            NSLayoutConstraint.activate(
                [
                    view.widthAnchor.constraint(equalToConstant: view.bounds.width),
                    view.heightAnchor.constraint(equalToConstant: view.bounds.height)
                ]
            )
        }
    }

}

