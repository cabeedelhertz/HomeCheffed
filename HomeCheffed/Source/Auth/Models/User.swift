//
//  User.swift
//  HomeCheffed
//
//  Created by Cabe Edelhertz on 12/14/24.
//


import FirebaseAuth
import FirebaseFirestore

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    
    let email: String
    let username: String
    let profileImageURL: String
    
    var fullName: String
    var favoriteQuote: String
    
    var isCurrentUser: Bool {
        Auth.auth().currentUser?.uid == id
    }
}
