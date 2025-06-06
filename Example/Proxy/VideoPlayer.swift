//
//  VideoPlayer.swift
//  Proxy
//
//  Created by 이현욱 on 6/8/25.
//

import Foundation

protocol VideoPlayerAble {
    func play()
    func pause()
    func load() -> VideoAble
}

class VideoPlayer: VideoPlayerAble {
    func play() {
        print("video play")
    }
    
    func pause() {
        print("video pause")
    }
    
    func load() -> VideoAble{
        print("video load")
        return Video()
    }
}
