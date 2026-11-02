//
//  RadialPatternComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct RadialPatternView: View {
    private let size: CGFloat = 200
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.clear)
            DotView(count: 20, dotSize: size / 10, xOffset: size / 2)
            DotView(count: 20, dotSize: size / 15, xOffset: size / 2.4)
                .rotationEffect(.degrees(25))
            DotView(count: 20, dotSize: size / 20, xOffset: size / 2.9)
            DotView(count: 20, dotSize: size / 15, xOffset: size / 1.7)
                .rotationEffect(.degrees(25))
            DotView(count: 20, dotSize: size / 20, xOffset: size / 1.6)
        }
    }
}
