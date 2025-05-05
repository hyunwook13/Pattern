//
//  Product.swift
//  FactoryPattern
//
//  Created by 이현욱 on 5/4/25.
//

import Foundation

enum ShapeType: Int {
    case Circle = 1
    case Square = 3
    case Triangle = 4
}

protocol Shape {
    func draw()
}

struct Square: Shape {
    func draw() {
        print("사각형!")
    }
}

struct Circle: Shape {
    func draw() {
        print("원!")
    }
}

struct Triangle: Shape {
    func draw() {
        print("삼각형!")
    }
}
