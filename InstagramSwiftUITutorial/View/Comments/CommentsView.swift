import SwiftUI

struct CommentsView: View {
    
    @State var commentText = ""
    @ObservedObject var viewModel: CommentViewModel
    
    init(post: Post) {
        self.viewModel = CommentViewModel(post: post)
    }
    
    var body: some View {
        VStack {
            // MARK: Comments
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(0 ..< 10) { _ in
                        CommentsCell()
                            
                    }
                }
            }
            .padding(.top)
            
            // MARK: Input text
            CustomInputView(inputText: $commentText, action: uploadComment)
            
        }
    }
    
    func uploadComment() {
        viewModel.uploadComment(commentText: commentText)
        commentText = ""
    }
}

