//
//  CustomerServiceHandler.swift
//  ChainOfResponsibility
//
//  Created by 이현욱 on 6/14/25.
//

import Foundation

protocol CustomerServiceHandler: class {
    var nextHandler: CustomerServiceHandler? { get set }
    func setNext(handler: CustomerServiceHandler)
    func handle(request: UserRequest)
}
