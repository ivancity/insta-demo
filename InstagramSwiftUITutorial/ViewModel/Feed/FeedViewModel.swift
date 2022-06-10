//
//  FeedViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Ivan on 6/9/22.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        COLLECTION_POSTS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.posts = documents.map({ try! $0.data(as: Post.self) })
            print(self.posts)
        }
    }
}
