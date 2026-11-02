//
//  SpeechBubbleComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct SpeechBubbleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX + 25, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX - 25, y: rect.maxY - 25))
        
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.25 + 15, y: rect.maxY - 25))
        
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.25, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.maxX - rect.width * 0.25 - 15, y: rect.maxY - 25))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - 25))
        path.closeSubpath()
        
        return path
    }
}
