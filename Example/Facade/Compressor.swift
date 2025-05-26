//
//  Compressor.swift
//  Facade
//
//  Created by 이현욱 on 5/26/25.
//

import UIKit

class Compressor {
    func compress(image: UIImage, quality: CGFloat = 0.7) -> Data? {
        return image.jpegData(compressionQuality: quality)
    }
}
