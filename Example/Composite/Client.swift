//
//  Client.swift
//  Composite
//
//  Created by 이현욱 on 5/28/25.
//

import Foundation

class Client {
    
    func start() {
        let baseView = View()
        
        let view1 = View()
        let button1 = Button()
        baseView.add(component: view1)
        baseView.add(component: button1)
        
        let view2 = View()
        let label1 = Label()
        view1.add(component: view2)
        view1.add(component: label1)
        
        baseView.operation()
    }
}
