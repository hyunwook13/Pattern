//
//  Composite.swift
//  Composite
//
//  Created by 이현욱 on 5/28/25.
//

import Foundation

class View: Component {
    var name: String = "View"
    var child: [Component] = []
    
    func operation() {
        print("뷰 \(UUID().uuidString), 추가할 준비 완료")
        child.forEach { $0.operation() }
    }
    
    func add(component: Component) {
        child.append(component)
    }
    
    func remove(component: Component) {
        child.removeAll { $0 === component }
    }
    
    func getChild() -> [Component] {
        return child
    }
    
}
