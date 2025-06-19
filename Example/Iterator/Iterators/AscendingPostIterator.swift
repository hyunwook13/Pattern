//
//  AscendingPostIterator.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

final class AscendingPostIterator<T>: Iterator {
    typealias Element = Post
    private var items: [Element]
    private var current = 0
 
    init(items: [Post]) {
        self.items = items.sorted { $0.date < $1.date }
    }
 
    func next() -> Element? {
        guard hasNext() else { return nil }
        defer { self.current += 1 }
 
        return items[current]
    }
 
    func hasNext() -> Bool {
        current < items.count
    }
}
