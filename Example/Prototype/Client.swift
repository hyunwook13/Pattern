//
//  Client.swift
//  Prototype
//
//  Created by 이현욱 on 5/12/25.
//

import UIKit

class Client {
    var userprofile: UserProfile?
    
    func createUser() {
        downloadHeavyImage { heavyImage in
            // 1) 한 번만 원본 객체 생성
            self.userprofile = UserProfile(
                name: "Alice",
                description: "First user",
                profileImage: heavyImage,    // 이 시점에만 무거운 이미지 로드
                favorites: ["🍎", "📚"],
                uuid: UUID().uuidString
            )
        }
    }
    
    // MARK: - 무거운 객체 생성 예시
    func downloadHeavyImage(completion: @escaping (UIImage) -> Void) {
        DispatchQueue.global().async {
            // 실제론 네트워크, 디코딩, 리사이징 등 비용이 큰 작업
            let image = UIImage(named: "HighResPhoto")!
            completion(image)
        }
    }
    
    
    func updateUserProfile() {
        if var copiedUserprofile = userprofile?.clone() {
            copiedUserprofile.name = "Queen"
            self.userprofile = copiedUserprofile
        }
    }
}
