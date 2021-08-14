//
//  AppDelegate.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        FirebaseApp.configure()
        
        let vc: UIViewController
        if AuthManager.shared.isSignedIn {
            vc = TabBarViewController()
        } else {
            let signInVC = SignInViewController()
            signInVC.navigationItem.largeTitleDisplayMode = .always
            
            let naviVC = UINavigationController(rootViewController: signInVC)
            naviVC.navigationBar.prefersLargeTitles = true
            
            vc = naviVC
        }
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc 
        window?.makeKeyAndVisible()

        return true
    }
}
