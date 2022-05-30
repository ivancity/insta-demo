import SwiftUI

enum Field: Hashable {
    case search
}

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        HStack {
            TextField(
                "Search...",
                text: $text
            )
            .padding(8)
            .padding(.horizontal, 24)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .overlay(
                HStack {
                    Image(
                        systemName: "magnifyingglass"
                    )
                    .foregroundColor(.gray)
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        alignment: .leading)
                    .padding(.leading, 8)
                }
            )
            .onTapGesture {
                isEditing = true
                focusedField = .search
            }
            .focused($focusedField, equals: .search)
            
            if isEditing {
                Button(
                    action: {
                        isEditing = false
                        text = ""
                        focusedField = nil
                        
                        // this is the old way but still works
//                        UIApplication.shared.endEditing()
                    },
                    label: {
                        Text("Cancel")
                            .foregroundColor(.black)
                    }
                )
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
            
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(
            text: .constant("Search..."), isEditing: .constant(true)
        )
    }
}
