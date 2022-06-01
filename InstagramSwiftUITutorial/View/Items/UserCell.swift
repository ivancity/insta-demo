import SwiftUI

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        HStack {
            // MARK: Image
            
            AsyncImage(
                url: URL(string: user.profileImageUrl)
            ) { image in
                image.resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }
            .frame(width: 48, height: 48)
            
//This is using the Kingfisher library
//            KFImage(URL(string: user.profileImageUrl))
//                .resizable()
//                .scaledToFill()
//                .frame(width: 48, height: 48)
//                .clipShape(Circle())
            
            // MARK: User name, full name
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(
                        .system(
                            size: 14, weight: .semibold
                        )
                    )
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

