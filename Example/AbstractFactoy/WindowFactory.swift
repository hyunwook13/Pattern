//
//  WindowFactory.swift
//  AbstractFactory
//
//  Created by 이현욱 on 5/5/25.
//

import Foundation

class WindowFactory: AbstactFactory {
    func createButton() -> Button {
        return WindowButton()
    }
    
    func createLabel() -> Label {
        return WindowLabel()
    }
}

class WindowButton: Button {
    func tap() {
        print("윈도우 버튼 눌렸어요!")
    }
}

class WindowLabel: Label {
    func show() {
        print("윈도우 라벨 보여줘요!")
    }
}
