//
//  Creator.swift
//  FactoryPattern
//
//  Created by 이현욱 on 5/4/25.
//

import Foundation

protocol Creator {
    func makeShape() -> Shape
}

class SquareCreator: Creator {
    func makeShape() -> Shape {
        return Square()
    }
}

class TriangleCreator: Creator {
    func makeShape() -> Shape {
        return Triangle()
    }
}

class CircleCreator: Creator {
    func makeShape() -> Shape {
        return Circle()
    }
}
