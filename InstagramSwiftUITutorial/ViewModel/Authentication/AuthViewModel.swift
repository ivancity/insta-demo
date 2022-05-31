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
    
    func register() {
        print("register")
    }
    
    func signOut() {
        
    }
    
    func fetchUser() {
        
    }
    
    func resetPassword() {
        
    }
    
}
