//
//  Client.swift
//  Flyweight
//
//  Created by 이현욱 on 5/24/25.
//

import Foundation
import SwiftUI

class Client {
    var drops = [Rain]()
    
    init(rainCount: Int) {
        for _ in 0..<rainCount {
            drops.append(StormDrop(type: type, direction: direction + .degrees(90)))
        }
    }
    
    func startRainAnimation() {
        let rains = (0..<500).map { _ in
            Rain(direction:
        }
    }
    
    func asd() {
        
        RainFactory.createRain(direction: Angle(degrees: Double.random(in: 0...360)))
        var delta = date.timeIntervalSince1970 - lastUpdate.timeIntervalSince1970
        let divisor = size.height / size.width
        
        if delta > 10 {
            delta = 0
        }

        for drop in drops {
            let radians = drop.direction.radians

            drop.x += cos(radians) * drop.speed * delta * divisor
            drop.y += sin(radians) * drop.speed * delta

            if drop.x < -0.2 {
                drop.x += 1.4
            }

            if drop.y > 1.2 {
                drop.x = Double.random(in: -0.2...1.2)
                drop.y -= 1.4
            }
        }
    }
}

