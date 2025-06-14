//
//  CEO.swift
//  ChainOfResponsibility
//
//  Created by 이현욱 on 6/14/25.
//

import Foundation

class CEO: CustomerServiceHandler {
    var nextHandler: (any CustomerServiceHandler)?
    
    func setNext(handler: any CustomerServiceHandler) {
        self.nextHandler = handler
    }
    
    func handle(request: UserRequest) {
        if request.type == .legal {
            return print("CEO 선에서 해결, \(request.content)")
        } else {
            print("CEO 선에서 해결 실패, 다음으로 전달, \(request.content)")
            nextHandler?.handle(request: request)
        }
    }
}
