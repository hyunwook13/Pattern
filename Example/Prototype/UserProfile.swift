//
//  UserProfile.swift
//  Prototype
//
//  Created by 이현욱 on 5/12/25.
//

import UIKit

struct UserProfile {
    var name: String
    var description: String
    var profileImage: UIImage
    var favorites: [String]
    let uuid: String
}

extension UserProfile: Prototype {
    func clone() -> UserProfile {
        return UserProfile(
            name: self.name,
            description: self.description,
            profileImage: self.profileImage,
            favorites: self.favorites,
            uuid: UUID().uuidString
        )
    }
}
