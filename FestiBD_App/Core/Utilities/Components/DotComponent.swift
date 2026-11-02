//
//  DotComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct DotView: View {
    let count: Int
    let dotSize: CGFloat
    let xOffset: CGFloat
    
    var body: some View {
        ZStack {
            ForEach(0..<count, id: \.self) {
                dot.rotationEffect(.degrees(Double($0 * 365 / count)))
            }
        }
    }
    
    var dot: some View {
        Group {
            Circle()
                .frame(width: dotSize, height: dotSize)
                .hidden()
            Circle()
                .frame(width: dotSize, height: dotSize)
                .offset(x: xOffset)
        }
    }
}
