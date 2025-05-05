//
//  Client.swift
//  AbstractFactory
//
//  Created by 이현욱 on 5/5/25.
//

import Foundation

enum FactoryType {
    case Window
    case Apple
}

class Client {
    func useFactory() {
        let type = FactoryType.Window
        
        let factory: AbstactFactory = type == .Window ? WindowFactory() : AppleFactory()
        
        let button = factory.createButton()
        let label = factory.createLabel()
        button.tap()
        label.show()
    }
}
