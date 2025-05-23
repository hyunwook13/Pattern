//
//  RainFactory.swift
//  Flyweight
//
//  Created by 이현욱 on 5/24/25.
//

import UIKit
import SwiftUI

class RainFactory {
    private static var imageCache: [String: UIImage] = [:]

    static func getImage(for key: String) -> UIImage {
        if let cached = imageCache[key] {
            return cached
        } else {
            let image = UIImage(named: key) ?? UIImage()
            imageCache[key] = image
            return image
        }
    }

    static func createRain(direction: Angle, typeKey: String = "rain") -> Rain {
        let image = getImage(for: typeKey)
        return Rain(image: image, direction: direction)
    }
}
