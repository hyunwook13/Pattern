//
//  Builder.swift
//  Builder
//
//  Created by 이현욱 on 5/8/25.
//

import Foundation

protocol HamburgerBuilder {
    func setBun(count: Int) -> Self
    func setLettuce(count: Int) -> Self
    func setCheese(count: Int) -> Self
    func setTomato(count: Int) -> Self
    
    func build() -> Product
}
