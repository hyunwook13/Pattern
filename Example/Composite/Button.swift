//
//  Button.swift
//  Composite
//
//  Created by 이현욱 on 5/28/25.
//

import Foundation

class Button: Component {
    var name: String = "Button"
    
    func operation() {
        print("버튼 \(UUID().uuidString), 눌릴준비 완료")
    }
}
