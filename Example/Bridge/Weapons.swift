//
//  Weapons.swift
//  Bridge
//
//  Created by 이현욱 on 6/2/25.
//

import Foundation

class Sword: Weapon {
    func attack() -> String {
        return "검으로 베어라!"
    }
}

class Bow: Weapon {
    func attack() -> String {
        return "활을 땡겨 쏘아라!"
    }
}

class Gun: Weapon {
    func attack() -> String {
        return "빵야"
    }
}

class Grenade: Weapon {
    func attack() -> String {
        return "폭탄!"
    }
}
