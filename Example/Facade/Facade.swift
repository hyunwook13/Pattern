//
//  Facade.swift
//  Facade
//
//  Created by 이현욱 on 5/26/25.
//

import UIKit

class ImageFacade {
    static func prepareForUpload(with image: UIImage?) -> Data? {
        guard let image = image else { return nil }
        let resizedImage = Resizer().resize(image: image, targetSize: CGSize(width: 100, height: 100))
        let compreesdData = Compressor().compress(image: resizedImage, quality: 0.7)
        return compreesdData
    }
}
