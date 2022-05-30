import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [Color.purple, Color.blue]
                        ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                VStack {
                    Image("instagram-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                    
                    Spacer()
                    
                }
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
