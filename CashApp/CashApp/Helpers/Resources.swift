//
//  Resources.swift
//  CashApp
//
//  Created by Славон Еремин on 11.02.2024.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#920DA5")
        
        static var background = UIColor(hexString: "#545C77")
        static var separator = UIColor(hexString: "#E8ECEF")
        
        static var titleColor = UIColor(hexString: "#83e0c8")
        static var titleGray = UIColor(hexString: "#545C77")
        
    }
    enum Strings {
        enum TabBar{
            static var tusks = "Задания"
            static var balance = "Баланс"
            static var settings = "Настройки"
        }
        enum TuskController {
            static var ButtonTusk = "СберМегаМаркет"
        }
    }
    ///
    enum Images {
        enum TabBar{
            static var tusks = UIImage(named: "tusks_tab")
            static var balance = UIImage(named: "balance_tab" )
            static var settings = UIImage(named: "settings_tab")
        }
        enum secondary_button {
            static var megamarket = UIImage(named: "megamarket")
        
        }
    }
    enum Fonts {
        static func helveticaregular(witch size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
