//
//  Label.swift
//  Composite
//
//  Created by 이현욱 on 5/28/25.
//

import Foundation

class Label: Component {
    var name: String = "Label"
     
    func operation() {
        print("레이블 \(UUID().uuidString), 보여줄 준비 완료")
    }
    
    
}
