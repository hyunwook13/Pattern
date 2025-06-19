//
//  ReversePostIterator.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

final class ReversePostIterator<T>: Iterator {
    typealias Element = Post
    private var items: [Post]
    private var current: Int
 
    init(items: [Post]) {
        self.items = items
        self.current = items.count - 1
    }
 
    func next() -> Post? {
        guard hasNext() else { return nil }
        defer { self.current -= 1 }
 
        return items[current]
    }
 
    func hasNext() -> Bool {
        current >= 0
    }
}
 
