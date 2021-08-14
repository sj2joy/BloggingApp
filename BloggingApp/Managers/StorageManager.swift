//
//  StorageManager.swift
//  BloggingApp
//
//  Created by Jang Seok jin on 2021/08/13.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    
    static let shared = StorageManager()
    
    private let database = Storage.storage().reference()
    
    private init() {}
    
    public func uploadUserProfilePicture(email: String,
                                         image: UIImage?,
                                         completion: @escaping (Bool) -> Void) {
        
    }
    
    public func downloadUrlForProfilePicture(user: User,
                                             completion: @escaping (URL?) -> Void) {
        
    }
    
    public func uploadBlogHeaderImage(blogPost: BlogPost,
                                      image: UIImage?,
                                      completion: @escaping (Bool) -> Void) {
        
    }
    
    public func downloadUrlForPostHeader(blogPost: BlogPost,
                                         completion: @escaping (URL?) -> Void) {
        
    }
}

