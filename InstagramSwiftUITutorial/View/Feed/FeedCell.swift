import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            // MARK: user info
            HStack {
                Image("background-colors")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                Text("Joker")
                    .font(
                        .system(
                            size: 14,
                            weight: .semibold
                        )
                    )
            }
            
            // MARK: main image
            Image("background-colors")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // MARK: action button
            HStack(spacing: 8) {
                Button(
                    action: {},
                    label: {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 28, height: 28)
                            .font(.system(size: 20))
                            .padding(4)
                    }
                )
                Button(
                    action: {},
                    label: {
                        Image(systemName: "bubble.right")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 28, height: 28)
                            .font(.system(size: 20))
                            .padding(4)
                    }
                )
                
                Button(
                    action: {},
                    label: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 28, height: 28)
                            .font(.system(size: 20))
                            .padding(4)
                    }
                )
            }
            .foregroundColor(.black)
            
            // MARK: caption
            HStack {
                Text("batman")
                    .font(.system(
                        size: 14,
                        weight: .semibold)
                    ) +
                Text(" All men have limits. They learn what they are and learn not to do exceed them. I ignore mine.")
                    .font(.system(size: 15))
            }
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
