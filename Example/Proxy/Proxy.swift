//
//  Proxy.swift
//  Proxy
//
//  Created by 이현욱 on 6/8/25.
//

import Foundation

class Proxy: VideoPlayerAble {
    
    var video: VideoAble?
    let real: VideoPlayerAble
    
    init(_ videoPlayer: VideoPlayerAble) {
        self.real = videoPlayer
    }
    
    func play() {
        real.play()
    }
    
    func pause() {
        real.pause()
    }
    
    func load() -> VideoAble {
        if let video = video {
            return video
        } else {
            let loadedVideo = real.load()
            self.video = loadedVideo
            return loadedVideo
        }
    }
}
