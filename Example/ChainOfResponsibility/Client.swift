//
//  Client.swift
//  ChainOfResponsibility
//
//  Created by 이현욱 on 6/14/25.
//

import Foundation

class Client {
    func start() {
        let ceo = CEO()
        let staff = Staff()
        let developer = Developer()
        
        staff.setNext(handler: developer)
        developer.setNext(handler: ceo)
        
        let userRequests = [
            UserRequest(type: .general, content: "비밀번호 변경 오류"),
            UserRequest(type: .technical, content: "결제 에러"),
            UserRequest(type: .legal, content: "저작권 오류")
        ]
        
        userRequests.forEach {
            staff.handle(request: $0)
        }
    }
}
