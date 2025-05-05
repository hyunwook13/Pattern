//
//  AbstactFactory.swift
//  AbstractFactory
//
//  Created by 이현욱 on 5/5/25.
//

import Foundation

protocol AbstactFactory {
    func createButton() -> Button
    func createLabel() -> Label
}
