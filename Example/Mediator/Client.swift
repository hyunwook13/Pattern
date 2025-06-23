//
//  Client.swift
//  Mediator
//
//  Created by 이현욱 on 6/23/25.
//

import Foundation

class Client {
    func start() {
        let session = Session()
        let user1 = User()
        let user2 = User()
        let admin = Admin()
        
        session.register(user1)
        session.register(user2)
        session.register(admin)
        
        user1.message = "\(admin.id) Hello World!"
        user1.send()
        
        user2.message = "🤮"
        user2.send()
        
        admin.message = "Good morning!"
        admin.send()
        
        admin.message = "user2, you kick"
        admin.send()
        
        admin.message = "/k \(user2.id)"
        admin.send()
        
        user2.message = "WHY???????????"
        user2.send()
        
        user2.message = "UnKick ME!!!!!!!!!!!!!!!!!!"
        user2.send()
    }
}
