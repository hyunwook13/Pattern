//
//  PostCollection.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

enum IteratorType {
    case `default`
    case reversed
    case ascending
}

class PostCollection: MutableIterable {
    typealias Element = Post
    
    private let type: IteratorType
    private var posts = [Post]()
    
    init(type: IteratorType = .default) {
        self.type = type
    }
    
    func appendItem(_ item: Post) {
        posts.append(item)
    }
    
    func appendItems(_ items: [Post]) {
        for post in items {
            posts.append(post)
        }
    }
    
    func makeIterator() -> any Iterator {
        switch type {
        case .default:
            return DefaultPostIterator<Post>(items: posts)
        case .reversed:
            return ReversePostIterator<Post>(items: posts)
        case .ascending:
            return AscendingPostIterator<Post>(items: posts)
        }
        
    }
}
