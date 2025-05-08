//
//  BigMac.swift
//  Builder
//
//  Created by 이현욱 on 5/8/25.
//

import Foundation

struct BigMac: Product {
    var bun: Int
    var lettuce: Int
    var cheese: Int
    var name: String = "BigMac"
    var tomato: Int
}

class BigMacBuilder: HamburgerBuilder {
    var bun: Int = 1
    var cheese: Int = 1
    var lettuce: Int = 1
    var tomato: Int = 1
    
    func setBun(count: Int) -> Self {
        self.bun = count
        return self
    }
    
    func setLettuce(count: Int) -> Self {
        self.lettuce = count
        return self
    }
    
    func setCheese(count: Int) -> Self {
        self.cheese = count
        return self
    }
    
    func setTomato(count: Int) -> Self {
        self.tomato = count
        return self
    }
    
    func build() -> Product {
        return BigMac(
            bun: bun,
            lettuce: lettuce,
            cheese: cheese,
            tomato: tomato
        )
    }
}
