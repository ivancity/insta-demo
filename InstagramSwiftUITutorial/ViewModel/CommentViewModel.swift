import SwiftUI
import Firebase

class CommentViewModel: ObservableObject {
    
    private let post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func uploadComment(commentText: String) {
        guard let user = AuthViewModel.shared.currentUser else { return }
        guard let postId = post.id else { return }
        let data: [String : Any] = [
            "username": user.username,
            "profileImageUrl": user.profileImageUrl,
            "uid": user.id ?? "",
            "timestamp": Timestamp(date: Date()),
            "postOwnerUid": post.ownerUid,
            "commentText": commentText
        ]
        
        COLLECTION_POSTS
            .document(postId)
            .collection("post-comments")
            .addDocument(data: data) { error in
                // Handle error here and show on UI something
            }
    }
    
    func fetchComments() {
        
    }
    
}
