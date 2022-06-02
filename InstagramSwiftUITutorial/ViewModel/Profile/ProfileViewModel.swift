//
//  ProfileViewModel.swift
//  InstagramSwiftUITutorial
//
//  Created by Ivan on 5/31/22.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) { self.user = user }
    
    func follow() {
        guard let uid = user.id else { return }
        UserService.follow(uid: uid) { _ in
            self.user.isFollowed = true
        }
    }
    
    func unfollow() {
        
    }
    
    func checkIfUserIsFollow() {
        
    }
}
