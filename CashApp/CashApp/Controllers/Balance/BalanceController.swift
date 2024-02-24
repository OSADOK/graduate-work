//
//  BalanceController.swift
//  CashApp
//
//  Created by Славон Еремин on 17.02.2024.
//

import UIKit

class BalanceController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Баланс"
        
        
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Доступно"
        
        let balance = UILabel()
        balance.textAlignment = .center
        balance.textColor = Resources.Colors.titleColor
        balance.text = "93,35₽"
        balance.font = UIFont.boldSystemFont(ofSize: 35)
        
        let button = UIButton(type: .system)
        button.setTitle("Выыести деньги", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = Resources.Colors.titleColor
        button.layer.cornerRadius = 10

        // Устанавливаем новый размер и положение кнопки
        balance.frame = CGRect(x: 70 , y: 50, width: 250, height: 50)
        label.frame = CGRect(x: 70 , y: 10, width: 250, height: 50)
        button.frame = CGRect(x: 70 , y: 120, width: 250, height: 50)

        // Добавляем кнопку на экран
        view.addSubview(balance)
        view.addSubview(label)
        view.addSubview(button)
        
//        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self,
                         action: #selector(butAction),
                         for: .touchUpInside)
    }
}
@objc extension BalanceController {
    func butAction() {
        print("withdraw money")
    }
}

 
//    private lazy var scrolView: UIScrollView = {
//        let scrolView = UIScrollView()
//        scrolView.backgroundColor = .white
//        scrolView.frame = view.bounds
//        scrolView.contentSize = contentCise
//        return scrolView
//    }()
//    private lazy var contentView: UIView = {
//        let contentView = UIView()
//        contentView.backgroundColor = .white
//        contentView.frame.size = contentCise
//        return contentView
//    }()
//    private let stackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.alignment = .center
//        stackView.spacing = 20
//        return stackView
//    }()
//    
//    private var contentCise: CGSize {
//        CGSize(width: view.frame.width, height: view.frame.height + 400)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(scrolView)
//        scrolView.addSubview(contentView)
//        contentView.addSubview(stackView)
//        setupColors()
//        
//    }
//}
//extension BalanceController {
//    private func setupViewsConstraints() {
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
//            stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
//            
//        ])
//        for view in stackView.arrangedSubviews {
//            NSLayoutConstraint.activate([
//                view.widthAnchor.constraint(equalToConstant: 300),
//                view.heightAnchor.constraint(equalToConstant: 100)
//            ])
//        }
//    }
//            private func setupColors() {
//                let colors = [UIColor.red, .green, .blue]
//                for index in 0..<10 {
//                    let view = UIView()
//                    view.backgroundColor = colors[index % colors.count]
//                    stackView.addArrangedSubview(view)
//                
//            }
//        }
//    }
            

    



  

//    override func viewDidLoad() {
//            super.viewDidLoad()
//            title = "Баланс"
//            configure()
////        / Серый UILabel с текстом "Доступно"
//                let availableLabel = UILabel()
//                availableLabel.text = "Доступно"
//                availableLabel.textColor = .gray
//                availableLabel.textAlignment = .center
//                availableLabel.font = UIFont.systemFont(ofSize: 14)
//                
//                // Баланс в рублях большим текстом
//                let balanceLabel = UILabel()
//                balanceLabel.text = "10000 руб."
//                balanceLabel.textColor = .black
//                balanceLabel.textAlignment = .center
//                balanceLabel.font = UIFont.systemFont(ofSize: 24)
//                
//                // Создаем StackView и добавляем в него UILabel'ы
//                let stackView = UIStackView(arrangedSubviews: [availableLabel, balanceLabel])
//                stackView.axis = .vertical  // Располагаем элементы вертикально
//                stackView.alignment = .center
//                stackView.translatesAutoresizingMaskIntoConstraints = false
//                self.view.addSubview(stackView)
//                
//                // Constraints для StackView
//                NSLayoutConstraint.activate([
//                    stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
//                    stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//                    stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//                    stackView.heightAnchor.constraint(equalToConstant: 100)  // Высота стека элементов
//                ])
//
//        let underline = UIView(frame: CGRect(x: 0, y: view.frame.height - 1, width: view.frame.width, height: 1))
//               underline.backgroundColor = .gray
//               underline.layer.shadowColor = UIColor.black.cgColor
//               underline.layer.shadowOffset = CGSize(width: 0, height: 2)
//               underline.layer.shadowOpacity = 0.5
//        view.addSubview(underline)
//
//            
//            let leftLabel = UILabel()
//            leftLabel.frame = CGRect(x: 0, y: balanceLabel.frame.maxY, width: view.frame.width/2, height: 50)
//            leftLabel.textAlignment = .center
//            leftLabel.text = "Доход за сегодня\n1500 руб."
//            view.addSubview(leftLabel)
//            
//            let rightLabel = UILabel()
//            rightLabel.frame = CGRect(x: view.frame.width/2, y: balanceLabel.frame.maxY, width: view.frame.width/2, height: 50)
//            rightLabel.textAlignment = .center
//            rightLabel.text = "Весь доход\n5000 руб."
//            view.addSubview(rightLabel)
//            
//            let line = UILabel()
//            line.frame = CGRect(x: 0, y: rightLabel.frame.maxY, width: view.frame.width, height: 1)
//            line.backgroundColor = .gray
//            view.addSubview(line)
//            
//            let button = UIButton()
//            button.frame = CGRect(x: view.frame.width/4, y: line.frame.maxY + 20, width: view.frame.width/2, height: 40)
//            button.setTitle("Вывести деньги", for: .normal)
//            button.setTitleColor(.white, for: .normal)
//            button.backgroundColor = .green
//            button.layer.cornerRadius = 20
//            view.addSubview(button)
//            
//            let scrollView = UIScrollView()
//            scrollView.frame = CGRect(x: 0, y: button.frame.maxY + 20, width: view.frame.width, height: view.frame.height - (button.frame.maxY + 20))
//            view.addSubview(scrollView)
//            
//            let historyLabel = UILabel()
//            historyLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
//            historyLabel.text = "История транзакций"
//            scrollView.addSubview(historyLabel)
//            
//            // Добавьте элементы истории транзакций внутрь скрол вью
            
//        }
//    }
