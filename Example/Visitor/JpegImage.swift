//
//  JpegImage.swift
//  Visitor
//
//  Created by 이현욱 on 6/17/25.
//

import Foundation

class JpegImage: Visitable {
    var qauility: String = "50%"
    
    func accept(_ visitor: any Visitor) {
        visitor.visit(self)
    }
}
