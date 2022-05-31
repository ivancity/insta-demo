import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }
    
    func register(
        withEmail email: String,
        password: String,
        image: UIImage?,
        fullname: String,
        username: String
    ) {
        
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                guard let user = result?.user else { return }
                print("Succesfully registered")
                
                let data = [
                    "email": email,
                    "username": username,
                    "fullname": fullname,
                    "profileImageUrl": imageUrl,
                    "uid": user.uid
                ]
                COLLECTION_USERS
                // This is important so we make a relationship between our auth uid and the entry for this user data, this way we can fetch later this document that we are creating based on our uid from the auth flow.
                    .document(user.uid)
                    .setData(data) { _ in
                        print("Succesfully uploaded all data")
                        self.userSession = user
                    }
            }
        }
    }
    
    func signOut() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else { return }
        COLLECTION_USERS
            .document(uid)
            .getDocument { snapshot, _ in
                
                let user = try? snapshot?.data(as: User.self)
//                guard let dictionary = snapshot?.data() else { return }
                print("test")
                
                
            }
    }
    
    func resetPassword() {
        
    }
    
}
