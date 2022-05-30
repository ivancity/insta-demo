import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            // MARK: Search bar
            SearchBar(text: $searchText)
                .padding()
            
            // MARK: grid view / user list
//            PostGridView()
            UserListView()
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
