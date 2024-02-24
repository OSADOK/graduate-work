//
//  SettingsController.swift
//  CashApp
//
//  Created by Славон Еремин on 17.02.2024.
//
import UIKit

class SettingsController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        title = "Настройки"
//        Создание кнопки
        let button = UIButton(type: .system)
        button.setTitle("Убрать рекламу", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = Resources.Colors.titleColor
        button.layer.cornerRadius = 10

        // Устанавливаем новый размер и положение кнопки
        button.frame = CGRect(x: 70 , y: 20, width: 250, height: 50)

        // Добавляем кнопку на экран
        view.addSubview(button)
        
//        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self,
                         action: #selector(buttonAction),
                         for: .touchUpInside)
    }
}
@objc extension SettingsController {
    func buttonAction() {
        print("DisableAds tapped")
    }
}

