//
//  Grenade.swift
//  Decorator
//
//  Created by 이현욱 on 5/30/25.
//

import Foundation

class Grenade: Component {

    let wrapped: Component
    
    init(wrapped: Component) {
        self.wrapped = wrapped
    }
    
    func shoot() {
        print("유탄 발사")
        wrapped.shoot()
    }
}
