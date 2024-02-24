//
//  TuskController.swift
//  CashApp
//
//  Created by Славон Еремин on 17.02.2024.
//

import UIKit

class TuskController: BaseController {
    
    private let button = SecondaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Задания"
        
    }
}
        extension TuskController {
            override func addViews() {
                super.addViews()
                view.addSubview(button)
            }
            override func layotVievs() {
                super.layotVievs()
                
                NSLayoutConstraint.activate([
                    button.topAnchor.constraint(equalTo: view.topAnchor),
                    button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    button.heightAnchor.constraint(equalToConstant: 100),
                    button.widthAnchor.constraint(equalToConstant: 360)
                ])
            }
            override func configure() {
                super.configure()
                
                button.translatesAutoresizingMaskIntoConstraints = false
                button.setTitle(Resources.Strings.TuskController.ButtonTusk)
                button.addTarget(self,
                                 action: #selector(buttonAction),
                                 for: .touchUpInside)
            }
        }
//создаем таргет. кнопка юзается теперь. 64 строка - активируем ее
@objc extension TuskController {
    func buttonAction() {
        print("button tapped")
    }
}

