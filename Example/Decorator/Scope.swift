//
//  Scope.swift
//  Decorator
//
//  Created by 이현욱 on 5/30/25.
//

import Foundation

class Scope: Component {
    
    let wrapped: Component
    let scopePower: Int
    
    init(wrapped: Component, scopePower: Int = 4) {
        self.wrapped = wrapped
        self.scopePower = scopePower
    }
    
    func shoot() {
        aim()
        wrapped.shoot()
    }
    
    private func aim() {
        print("\(scopePower)배로 조준")
    }
}
