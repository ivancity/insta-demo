import SwiftUI

struct CommentsView: View {
    
    @State var commentText = ""
    
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
        
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
