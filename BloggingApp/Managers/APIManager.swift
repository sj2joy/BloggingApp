//
//  APIManager.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import Foundation
import Purchases

final class APIManager {
    static let shared = APIManager()
    
    private init() {}
    
    func isPremium() -> Bool {
        return UserDefaults.standard.bool(forKey: "premium")
    }
    
    public func getSubscriptionStatus() {
        Purchases.shared.purchaserInfo { info, error in
            guard let entitlements = info?.entitlements,
                  error == nil else {
                return
            }
            print(entitlements)
        }
    }
    
    func subscribe() {
        
    }
    func restorePurchases() {
        
    }
}
