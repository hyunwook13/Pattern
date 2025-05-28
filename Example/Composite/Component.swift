//
//  Component.swift
//  Composite
//
//  Created by 이현욱 on 5/28/25.
//

import Foundation

protocol Component: AnyObject {
    var name: String { get set }
    
    func operation()
}
