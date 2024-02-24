//
//  SceneDelegate.swift
//  CashApp
//
//  Created by Славон Еремин on 11.02.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
    //создаем дефолтный таббар
        let tabBarController  = TabBarController()
        // делаем проверку доступности сцены (без этого не запуститсч приложение)
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible() 
    }
}
