//
//  BaseController.swift
//  CashApp
//
//  Created by Славон Еремин on 14.02.2024.
//

import UIKit

class BaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
            addViews()
            layotVievs()
            configure()
        }
    }
    @objc extension BaseController {
        
        func addViews() {}
        
        func layotVievs() {}
        
        func configure() {
            view.backgroundColor = Resources.Colors.separator
        }
    }

