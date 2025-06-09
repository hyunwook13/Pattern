//
//  CommandManager.swift
//  Command
//
//  Created by 이현욱 on 6/9/25.
//

import Foundation

class CommandManager {
    private var undoStack: [Command] = []
    private var redoStack: [Command] = []

    func execute(_ command: Command) {
        command.execute()
        undoStack.append(command)
        redoStack.removeAll()
    }

    func undo() {
        guard let command = undoStack.popLast() else { return }
        command.undo()
        redoStack.append(command)
    }

    func redo() {
        guard let command = redoStack.popLast() else { return }
        command.execute()
        undoStack.append(command)
    }
}
