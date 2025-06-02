//
//  Characters.swift
//  Bridge
//
//  Created by 이현욱 on 6/2/25.
//

import Foundation

class Goblin: Character {
    override func performAttack() {
        print("고블린이 \(attackMessage())")
    }
}

class Elf: Character {
    override func performAttack() {
        print("엘프가 \(attackMessage())")
    }
}

class Warrior: Character {
    override func performAttack() {
        print("워리어가 \(attackMessage())")
    }
}
