import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var inSearchMode = true
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
            // MARK: Search bar
            SearchBar(
                text: $searchText,
                isEditing: $inSearchMode
            )
                .padding()
            
            // MARK: grid view / user list
            ZStack {
                if inSearchMode {
                    UserListView(
                        viewModel: viewModel,
                        searchText: $searchText
                    )
                } else {
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
