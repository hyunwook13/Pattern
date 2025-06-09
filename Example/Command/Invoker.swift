//
//  Invoker.swift
//  Command
//
//  Created by 이현욱 on 6/9/25.
//

import Foundation

class Client {
    func start() {
        let viewModel = Receiver()
        let manager = CommandManager()

        let cmd1 = ConcreteCommand(receiver: viewModel, text: "Hello", index: 0)
        manager.execute(cmd1)

        let cmd2 = ConcreteCommand(receiver: viewModel, text: " World", index: 5)
        manager.execute(cmd2)

        print(viewModel.content) // "Hello World"

        manager.undo()
        print(viewModel.content) // "Hello"

        manager.redo()
        print(viewModel.content) // "Hello World"
    }
}
