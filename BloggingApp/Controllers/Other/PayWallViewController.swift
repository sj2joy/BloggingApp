//
//  PayWallViewController.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import UIKit


class PayWallViewController: UIViewController {
        
    private let header = PayWallHeaderView()
    
    //Pricing and product info
    
    private let heroView = PayWallDescriptionView()
    //CTA Buttons
    private let buyButton: UIButton = {
       let button = UIButton()
        button.setTitle("Subscribe", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private let restoreButton: UIButton = {
       let button = UIButton()
        button.setTitle("Restore Purchases", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    //Terms of Service
    private let termsView: UITextView = {
       let textView = UITextView()
        textView.isEditable = false
        textView.textAlignment = .center
        textView.textColor = .secondaryLabel
        textView.font = .systemFont(ofSize: 14)
        textView.text = "This is an auto - renewable Subscription"
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "BlogginApp Premium"
        view.backgroundColor = .systemBackground
        view.addSubview(header)
        view.addSubview(buyButton)
        view.addSubview(restoreButton)
        view.addSubview(termsView)
        view.addSubview(heroView)
        setUpCloseButton()
        setUpButtons()
        heroView.backgroundColor = .systemYellow
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        header.frame = CGRect(x: 0,
                              y: view.safeAreaInsets.top,
                              width: view.width,
                              height: view.height / 3.2)
        
        termsView.frame = CGRect(x: 10,
                                 y: view.height - 100,
                                 width: view.width - 15,
                                 height: 90)
        
        restoreButton.frame = CGRect(x: 20,
                                     y: termsView.top - 65,
                                     width: view.width - 45,
                                     height: 45)
        
        buyButton.frame = CGRect(x: 20,
                                 y: restoreButton.top - 55,
                                 width: view.width - 45,
                                 height: 45)
        
        heroView.frame = CGRect(x: 0,
                                y: header.bottom,
                                width: view.width,
                                height: buyButton.top - view.safeAreaInsets.top - header.height)
    }
    
    private func setUpButtons() {
        buyButton.addTarget(self, action: #selector(didTapSubscribe), for: .touchUpInside)
        restoreButton.addTarget(self, action: #selector(didTapRestore), for: .touchUpInside)
    }
    
    @objc private func didTapSubscribe() {
        
    }
    
    @objc private func didTapRestore() {
        
    }
    
    private func setUpCloseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close,
                                                            target: self,
                                                            action: #selector(didTapClose))
    }
    
    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }
}
