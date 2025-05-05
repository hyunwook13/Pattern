//
//  AppleFactory.swift
//  AbstractFactory
//
//  Created by 이현욱 on 5/5/25.
//

import Foundation

class AppleFactory: AbstactFactory {
    func createButton() -> Button {
        return AppleButton()
    }
    
    func createLabel() -> Label {
        return AppleLabel()
    }
}

class AppleButton: Button {
    func tap() {
        print("애플 버튼 눌렸어요!")
    }
}

class AppleLabel: Label {
    func show() {
        print("애플 라벨 보여줘요!")
    }
}
