//
//  ConcreteCommand.swift
//  Command
//
//  Created by 이현욱 on 6/9/25.
//

import Foundation

class ConcreteCommand: Command {
    var receiver: Receiver!
    private let textToInsert: String
    private let insertIndex: Int
    
    init(receiver: Receiver, text: String, index: Int) {
        self.receiver = receiver
        self.textToInsert = text
        self.insertIndex = index
    }

    func execute() {
        receiver.insert(text: textToInsert, at: insertIndex)
    }

    func undo() {
        receiver.delete(range: insertIndex..<(insertIndex + textToInsert.count))
    }
}
