//
//  Session.swift
//  Mediator
//
//  Created by 이현욱 on 6/23/25.
//

import Foundation

class Session: Mediator {
    var users = [Userable]()
    var kick = [String]()
    
    func register(_ user: Userable) {
        users.append(user)
        user.session = self
    }
    
    func requestSend(for sender: Userable) {
        guard users.contains(where: { $0.id == sender.id }) else { return }
        
        guard let message = sender.message else {
            print("No Message.")
            return
        }
        
        if message.starts(with: "/k") && sender.role == .admin {
            let components = message.split(separator: " ")
            let targetID = String(components[1])
            
            kick.append(targetID)
        } else if sender.role == .admin {
            print("🔒 [\(sender.role)]: 공지입니다. \(message)")
        } else if sender.role == .user && kick.contains(where: { $0 == sender.id }) {
            print("차단당한 유저입니다.")
        } else if sender.role == .user {
            print("💬 \(message)")
        }
    }
}
