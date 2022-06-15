import SwiftUI

struct CommentsCell: View {
    var body: some View {
        HStack {
            Image("background-colors")
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            Text("batman")
                .font(.system(size: 14, weight: .semibold))
            Text(" some test comment here")
                .font(.system(size: 14))
            Spacer()
            Text("2m")
                .foregroundColor(.gray)
                .font(.system(size: 12))
        }
        .padding(.horizontal)
    }
}

struct CommentsCell_Previews: PreviewProvider {
    static var previews: some View {
        CommentsCell()
    }
}
