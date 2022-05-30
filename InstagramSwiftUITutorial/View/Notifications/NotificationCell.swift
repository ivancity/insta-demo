import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = false
    
    var body: some View {
        HStack {
            // MARK: Image
            Image("background-colors")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            Text("batman")
                .font(.system(
                    size: 14,
                    weight: .semibold)
                ) +
            Text(" All men have limits. They learn.")
                .font(.system(size: 15))
            Spacer()
            
            if showPostImage {
                Image("background-colors")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipped()
            } else {
                Button(action: {
                    
                }) {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(
                            size: 14,
                            weight: .semibold)
                        )
                }
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
