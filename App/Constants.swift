//
//  Constants.swift
//  SurfTestApp
//
//  Created by Станислав Шульц on 06.02.2023.
//

import UIKit

enum Constants {
    static let topImage: String = "picture"
    static let internSpecialities = ["IOS", "Android", "Flutter", "Design", "PM", "QA", "Java", "Python", "Ruby", "Golang"]
    static let headLineText: String = "Стажировка в Surf"
    static let infoText: String = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты."
    static let questionLabelText: String = "Хочешь к нам?"
    static let buttonText: String = "Отправить заявку"
    
    static let deselectedChipsFontColor: UIColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
    static let selectedChipsFontColor: UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 100)
    static let deselectedChipsBackgroundColor: UIColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
    static let selectedChipsBackgroundColor: UIColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
    static let headlinrTextColor: UIColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
    static let infoTextColor: UIColor = UIColor(red: 150/255, green: 149/255, blue: 155/255, alpha: 100)
    static let questionLabelTextColor: UIColor = Constants.infoTextColor
    static let buttonColor: UIColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 100)
    static let buttonTintColor: UIColor = UIColor(red: 1, green: 1, blue: 1, alpha: 100)
    
    static let headlineFontStyle: UIFont = UIFont.boldSystemFont(ofSize: 24)
    static let infoTextFontStyle: UIFont = UIFont.systemFont(ofSize: 14)
    static let questionLabelFontStyle: UIFont = Constants.infoTextFontStyle
    
    static let buttonFontSize: CGFloat = 16
    static let chipsCornerRadius: CGFloat = 12
    static let chipsFontSize: CGFloat = 14
    static let chipsMinimumLineSpacing: CGFloat = 12
    static let bottomViewCornerRadius: CGFloat = 32
    static let buttonCornerRadius: CGFloat = CGFloat(Constants.buttonHeight / 2)
    
    static let headlineNumberOfLines: Int = 1
    static let infoNumberOfLines: Int = 0
    static let questionLabelNumberOfLines = 1
    static let buttonHeight: Int = 60
    static let buttonWidth: Int = 219
    

}
