//
//  ViewController.swift
//  FactoryPattern
//
//  Created by 이현욱 on 5/4/25.
//

import UIKit

class ViewController: UIViewController {
    private let circleCreator = CircleCreator()
    private let squareCreator = SquareCreator()
    private let triangleCreator = TriangleCreator()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createShape(for rawValue: Int) -> Shape {
        // 1) rawValue로 타입을 안전하게 바인딩
        guard let type = ShapeType(rawValue: rawValue) else {
            fatalError("Invalid ShapeType rawValue: \(rawValue)")
        }
        
        // 2) switch로 분기
        switch type {
        case .Circle:
            return circleCreator.makeShape()
        case .Triangle:
            return triangleCreator.makeShape()
        case .Square:
            return squareCreator.makeShape()
        }
    }
}
