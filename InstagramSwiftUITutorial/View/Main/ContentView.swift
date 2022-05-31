import SwiftUI

struct ContentView: View {
    var body: some View {
//        MainTabView()
        LoginView()
            .environmentObject(AuthViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
