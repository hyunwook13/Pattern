//
//  Client.swift
//  Adapter
//
//  Created by 이현욱 on 5/20/25.
//

import Foundation

enum LoginType {
    case apple
    case facebook
    case kakao
}

class Client {
    func login(with type: LoginType) {
        var adapter: Adapter!
        switch type {
        case .apple:
            adapter = AppleAdapter()
        case .facebook:
            adapter = FacebookAdapter()
        case .kakao:
            adapter = KakaoAdapter()
        }
        
        adapter.login()
    }
}
