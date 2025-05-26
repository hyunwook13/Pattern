//
//  Client.swift
//  Facade
//
//  Created by 이현욱 on 5/26/25.
//

import UIKit

class Client {
    func upload() {
        let image = UIImage(systemName: "person.fill")
        
        if let data = ImageFacade.prepareForUpload(with: image) {
            print("data upload", data)
        }
    }
}
