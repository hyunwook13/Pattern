//
//  Admin.swift
//  Mediator
//
//  Created by 이현욱 on 6/23/25.
//

import Foundation

class Admin: Userable {
    let id = UUID().uuidString
    var message: String?
    var role: Role = .admin
    
    weak var session: Session?
    
    func send() {
        session?.requestSend(for: self)
    }
}
