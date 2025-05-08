//
//  Whopper.swift
//  Builder
//
//  Created by 이현욱 on 5/8/25.
//

import Foundation

protocol Product { }

struct Whopper: Product {
    var bun: Int
    var lettuce: Int
    var cheese: Int
    var name: String = "Whopper"
    var tomato: Int
}

class WhopperBuilder: HamburgerBuilder {
    var bun = 2
    var lettuce = 1
    var tomato = 1
    var cheese = 1
    
    func build() -> Product {
        return Whopper(
            bun: bun,
            lettuce: lettuce,
            cheese: cheese,
            name: "Whopper",
            tomato: tomato
        )
    }
    
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
}

