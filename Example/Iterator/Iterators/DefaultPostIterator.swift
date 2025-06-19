//
//  DefaultPostIterator.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

final class DefaultPostIterator<T>: Iterator {
    private var items: [Post] = []
    private var current = 0
 
    init(items: [Post]) {
        self.items = items
    }
 
    func next() -> Post? {
        guard hasNext() else { return nil }
        defer { self.current += 1 }
 
        return items[current]
    }
 
    func hasNext() -> Bool {
        current < items.count
    }
}
