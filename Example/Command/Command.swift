//
//  Command.swift
//  Command
//
//  Created by 이현욱 on 6/9/25.
//

import Foundation

protocol Command {
    func execute()
    func undo()
}
