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
            .padding([.leading, .bottom], 8)
            
            // MARK: main image
            Image("background-colors")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // MARK: action button
            HStack(spacing: 16) {
                Button(
                    action: {},
                    label: {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 20, height: 20)
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
                            .frame(width: 20, height: 20)
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
                            .frame(width: 20, height: 20)
                            .font(.system(size: 20))
                            .padding(4)
                    }
                )
            }
            .padding(.leading, 4)
            .foregroundColor(.black)
            
            // MARK: Likes
            Text("3 likes")
                .font(
                    .system(
                        size: 14,
                        weight: .semibold
                    )
                )
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            // MARK: caption
            HStack {
                Text("batman")
                    .font(.system(
                        size: 14,
                        weight: .semibold)
                    ) +
                Text(" All men have limits. They learn what they are and learn not to do exceed them. I ignore mine.")
                    .font(.system(size: 15))
            }.padding(.horizontal, 8)
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 1)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
