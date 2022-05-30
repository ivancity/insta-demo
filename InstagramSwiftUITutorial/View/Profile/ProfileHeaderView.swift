import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("background-colors")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()
                HStack(spacing: 16) {
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 2, title: "Post")
                    UserStatView(value: 1009, title: "Following")
                }.padding(.trailing, 16)
            }
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("Gotham Dark Knight Billionaire")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
