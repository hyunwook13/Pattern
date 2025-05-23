//
//  Client.swift
//  Flyweight
//
//  Created by 이현욱 on 5/24/25.
//

import Foundation
import SwiftUI

struct RainCanvasView: View {
    @State private var storm = Storm(direction: .degrees(0), rainCount: 200)

    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                storm.update(date: timeline.date, size: size)

                for drop in storm.drops {
                    let point = CGPoint(x: drop.x * size.width, y: drop.y * size.height)
                    context.opacity = drop.opacity
                    context.draw(Image(uiImage: drop.image), at: point)
                }
            }
        }
    }
}
