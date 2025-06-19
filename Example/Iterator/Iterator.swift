//
//  Iterator.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

protocol Iterable {
    func makeIterator() -> any Iterator
}

protocol MutableIterable: Iterable {
    associatedtype Element
    func appendItem(_ item: Element)
    func appendItems(_ items: [Element])
}
 
protocol Iterator {
    associatedtype Element
    func hasNext() -> Bool
    func next() -> Element?
}
