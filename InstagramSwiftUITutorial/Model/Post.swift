//
//  Post.swift
//  InstagramSwiftUITutorial
//
//  Created by Ivan on 6/9/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Post: Identifiable, Decodable {
    @DocumentID var id: String?
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    let ownerImageUrl: String
    let ownerUsername: String
    
    var didLike: Bool? = false
}
