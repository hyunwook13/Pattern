//
//  Receiver.swift
//  Command
//
//  Created by 이현욱 on 6/9/25.
//

import Foundation

class Receiver {
    private(set) var content: String = ""
    
    func insert(text: String, at index: Int) {
        let startIndex = content.index(content.startIndex, offsetBy: index)
        content.insert(contentsOf: text, at: startIndex)
    }
    
    func delete(range: Range<Int>) {
        let start = content.index(content.startIndex, offsetBy: range.lowerBound)
        let end = content.index(content.startIndex, offsetBy: range.upperBound)
        content.removeSubrange(start..<end)
    }
}
