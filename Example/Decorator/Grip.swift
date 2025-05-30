//
//  Grip.swift
//  Decorator
//
//  Created by 이현욱 on 5/30/25.
//

import Foundation

enum GripType: String {
    case Vertical
    case Angled
    case Thumb
}

class Grip: Component {
    
    let wrapped: Component
    let gripType: GripType
    
    init(wrapped: Component, type: GripType = .Vertical) {
        self.wrapped = wrapped
        self.gripType = type
    }
    
    func shoot() {
        print("\(gripType.rawValue) 손잡이 잡고!")
        wrapped.shoot()
    }
}
