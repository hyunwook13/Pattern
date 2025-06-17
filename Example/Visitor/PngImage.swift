//
//  PngImage.swift
//  Visitor
//
//  Created by 이현욱 on 6/17/25.
//

import Foundation

class PngImage: Visitable {
    var qauility: String = "75%"
    
    func accept(_ visitor: any Visitor) {
        visitor.visit(self)
    }
}
