//
//  User.swift
//  Mediator
//
//  Created by 이현욱 on 6/23/25.
//

import Foundation

class User: Userable {
    let id = UUID().uuidString
    var message: String?
    var role: Role = .user
    
    weak var session: Session?
    
    func send() {
        session?.requestSend(for: self)
    }
}
