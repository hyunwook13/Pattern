//
//  Client.swift
//  Decorator
//
//  Created by 이현욱 on 5/30/25.
//

import Foundation

class Client {
    func execute() {
        let weapon = Gun()
        
        let scoped = Scope(wrapped: weapon, scopePower: 16)
        let gripedAndScoped = Grip(wrapped: scoped, type: .Angled)
        let lasoredAndGripedAndScoped = Lasor(wrapped: gripedAndScoped)
        let grenadedAndLasoredAndGripedAndScoped = Grenade(wrapped: lasoredAndGripedAndScoped)
        
        grenadedAndLasoredAndGripedAndScoped.shoot()
    }
}
