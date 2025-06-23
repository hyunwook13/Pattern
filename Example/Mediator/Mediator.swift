//
//  Mediator.swift
//  Mediator
//
//  Created by 이현욱 on 6/23/25.
//

import Foundation

protocol Mediator {
    func requestSend(for user: Userable)
}

protocol Userable: AnyObject {
    var id: String { get }
    var role: Role { get }
    var message: String? { get set }
    var session: Session? { get set }
}

enum Role {
    case admin
    case user
}

