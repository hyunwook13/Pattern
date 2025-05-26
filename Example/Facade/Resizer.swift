//
//  Resizer.swift
//  Facade
//
//  Created by 이현욱 on 5/26/25.
//

import UIKit

class Resizer {
    func resize(image: UIImage, targetSize: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            image.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
}
