//
//  Visitor.swift
//  Visitor
//
//  Created by 이현욱 on 6/17/25.
//

import Foundation

protocol Visitor {
    func visit(_ element: JpegImage)
    func visit(_ element: PngImage)
}

class ImageVisitort: Visitor {
    func visit(_ element: JpegImage) {
        element.qauility = "100%"
        print("Jpeg 퀄리티를 변경")
    }
    
    func visit(_ element: PngImage) {
        element.qauility = "40%"
        print("Png 퀄리티를 변경")
    }
}
