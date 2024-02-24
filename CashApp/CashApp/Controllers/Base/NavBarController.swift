//
//  NavBarController.swift
//  CashApp
//
//  Created by Славон Еремин on 14.02.2024.
//

import UIKit

final class NavBarController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    private func configure() {
        view.backgroundColor = Resources.Colors.titleColor
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: Resources.Fonts.helveticaregular(witch: 17)
            ]
//         полоски navbar
        navigationBar.addBottomBorder(with: Resources.Colors.titleGray, height: 0)
    }
}
