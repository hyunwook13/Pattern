//
//  Flyweight.swift
//  Flyweight
//
//  Created by 이현욱 on 5/24/25.
//

import UIKit
import SwiftUI

class Rain {
    var image: UIImage
    
    var x: Double
    var y: Double
    var xScale: Double
    var yScale: Double
    var speed: Double
    var opacity: Double
    
    var direction: Angle
    var rotation: Angle
    var rotationSpeed: Angle
    
    init(image: UIImage, direction: Angle) {
        self.image = image
        self.direction = direction
        
        x = Double.random(in: -0.2...1.2)
        y = Double.random(in: -0.2...1.2)
        
        xScale = Double.random(in: 0.4...1)
        yScale = xScale
        speed = Double.random(in: 1...2)
        opacity = Double.random(in: 0.05...0.3)
        rotation = Angle.zero
        rotationSpeed = Angle.zero
    }
}
