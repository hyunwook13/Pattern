//
//  Visitable.swift
//  Visitor
//
//  Created by 이현욱 on 6/17/25.
//

import Foundation

protocol Visitable {
    var qauility: String { get }
    
    func accept(_ visitor: Visitor)
}
