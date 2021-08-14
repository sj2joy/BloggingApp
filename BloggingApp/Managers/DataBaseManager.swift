//
//  DataBaseManager.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {}
    
    public func insert(blogPost: BlogPost,
                       user: User,
                       completion: @escaping (Bool) -> Void) {
        
    }
    
    public func getAllPosts(completion: @escaping ([BlogPost]) -> Void) {
        
    }
    
    public func getPosts(for user: User,
                         completion: @escaping ([BlogPost]) -> Void) {
        
    }
    
    public func insert(user: User,
                       completion: @escaping (Bool) -> Void) {
        let documentId = user.email
            .replacingOccurrences(of: ".", with: "_")
            .replacingOccurrences(of: "@", with: "_")
        
        let data = [
            "email": user.email,
            "name": user.name
        ]
        database.collection("users")
            .document(documentId)
            .setData(data) { error in
            completion(error == nil)
        }
    }
}