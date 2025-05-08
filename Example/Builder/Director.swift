//
//  Director.swift
//  Builder
//
//  Created by 이현욱 on 5/8/25.
//

import Foundation

class Director {
    func makeBigmac() {
        let builder: HamburgerBuilder = BigMacBuilder()
        
        let bigmac = builder.setBun(count: 3)
            .setCheese(count: 2)
            .setLettuce(count: 3)
            .setTomato(count: 2)
            .build()
        
        print("빅맥이요!", bigmac)
    }
    
    func makeWhoper() {
        let builder: HamburgerBuilder = WhopperBuilder()
        
        let whoper = builder.setBun(count: 2)
            .setCheese(count: 4)
            .setLettuce(count: 3)
            .setTomato(count: 2)
            .build()
        
        print("와퍼요!", whoper)
    }
}

