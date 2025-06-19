//
//  Client.swift
//  Iterator
//
//  Created by 이현욱 on 6/20/25.
//

import Foundation

class Client {
    func start() {
        let collection = PostCollection(type: .default)
        
        let post1 = Post(title: "Post 1", date: Date())
        let post2 = Post(title: "Post 2", date: Date() + 10)
        let post3 = Post(title: "Post 3", date: Date() - 10)
        collection.appendItem(post1)
        collection.appendItem(post2)
        collection.appendItem(post3)
        
        let iter = collection.makeIterator()

        while iter.hasNext() {
            if let next = iter.next(), let nextPost = next as? Post {
                print(nextPost.title, nextPost.date)
            }
        }
    }
}
