//
//  ViewController.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import UIKit

class MainViewController: UIViewController {

    private let composeButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.setImage(UIImage(systemName: "square.and.pencil", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium)), for: .normal)
        button.layer.cornerRadius = 30
        button.layer.shadowColor = UIColor.label.cgColor
        button.layer.shadowOpacity = 0.4
        button.layer.shadowRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(composeButton)
        composeButton.addTarget(self, action: #selector(didTapCreate), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        composeButton.frame = CGRect(x: view.frame.size.width - 80 - 16,
                                     y: view.frame.size.height - 80 - 16 - view.safeAreaInsets.bottom,
                                     width: 60,
                                     height: 60)
    }
    
    @objc private func didTapCreate() {
        let vc = CreateNewPostViewController()
        vc.title = "Create Post"
        let naviVC = UINavigationController(rootViewController: vc)
        present(naviVC, animated: true)
    }
    
}

