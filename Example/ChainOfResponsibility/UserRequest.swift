//
//  UserRequest.swift
//  ChainOfResponsibility
//
//  Created by 이현욱 on 6/14/25.
//

import Foundation

enum RequestType {
    case general
    case technical
    case legal
}

struct UserRequest {
    let type: RequestType
    let content: String
}
