//
//  Lasor.swift
//  Decorator
//
//  Created by 이현욱 on 5/30/25.
//

import Foundation

class Lasor: Component {
    let wrapped: Component
    
    init(wrapped: Component) {
        self.wrapped = wrapped
    }
    
    func shoot() {
        print("레이저로 쏘고!")
        wrapped.shoot()
    }
}
