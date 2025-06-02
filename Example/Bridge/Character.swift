//
//  Character.swift
//  Bridge
//
//  Created by 이현욱 on 6/2/25.
//

import Foundation

class Character: Abstraction {
    let weapon: Weapon
    
    init(weapon: Weapon) {
        self.weapon = weapon
    }
    
    internal func attackMessage() -> String {
        return weapon.attack()
    }

    func performAttack() {
        print(attackMessage())
    }
}

