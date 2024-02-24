//
//  ButtonTusk.swift
//  CashApp
//
//  Created by Славон Еремин on 23.02.2024.
//

import UIKit

final class SecondaryButton: UIButton {
    
    private let lable = UILabel ()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layotVievs()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setTitle(_ title: String){
        lable.text = title 
    }
}

private extension SecondaryButton {
    
    func addViews() {
        addSubview(lable)
        addSubview(iconView)
    }
        
    
    func layotVievs() {
        
        NSLayoutConstraint.activate([
            
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            iconView.heightAnchor.constraint(equalToConstant: 50),
            iconView.widthAnchor.constraint(equalToConstant: 50),
            
            
            lable.heightAnchor.constraint(equalToConstant: 70 ),
            lable.trailingAnchor.constraint(equalTo: trailingAnchor),
            lable.leadingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -70)
            
            
        ])
    }
    func configure() {
        
        backgroundColor = .white
//      закругление
//      layer.cornerRadius = 14
        makeSystem(self)
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textColor = .black
        lable.textAlignment = .center
        lable.font = Resources.Fonts.helveticaregular(witch: 15)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.layer.cornerRadius = 10
        iconView.image = Resources.Images.secondary_button.megamarket
    }
    
}

