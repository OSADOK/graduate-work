//
//  TabBarController.swift
//  CashApp
//
//  Created by Славон Еремин on 11.02.2024.
//

import UIKit

enum Tabs: Int{
    case tusks
    case balance
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.titleColor
        tabBar.barTintColor = .white
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        //Ширина Бордера
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        //Добавляем три контроллера
        let tusksviewController = TuskController()
        let balanceviewController = BalanceController()
        let settingsviewController = SettingsController()
        
        //Создаем навигайшен контроллеры
        let tusksNavigation = NavBarController(rootViewController: tusksviewController)
        let balanceNavigation = NavBarController(rootViewController: balanceviewController)
        let settingsNavigation = NavBarController(rootViewController: settingsviewController)
        
        //Создаем элементы таббара
        tusksNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.tusks,
                                                      image: Resources.Images.TabBar.tusks,
                                                      tag: Tabs.tusks.rawValue)
        balanceNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.balance,
                                                      image: Resources.Images.TabBar.balance,
                                                      tag: Tabs.balance.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                      image: Resources.Images.TabBar.settings,
                                                      tag: Tabs.settings.rawValue)
        setViewControllers([
            tusksNavigation,
            balanceNavigation,
            settingsNavigation
        ], animated: false)
    }
    
}
