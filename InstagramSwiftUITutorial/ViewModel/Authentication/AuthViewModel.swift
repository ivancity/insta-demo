//
//  AuthViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Ivan on 5/30/22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("login")
    }
    
    func register(withEmail email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Succesfully registered")
        }
    }
    
    func signOut() {
        
    }
    
    func fetchUser() {
        
    }
    
    func resetPassword() {
        
    }
    
}
