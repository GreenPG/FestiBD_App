//
//  CategoryColor.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 06/10/2026.
//
import Foundation
import SwiftUI

enum CategoryColor : String, CaseIterable {
    case drawing = "Drawing", writing = "Writing", calligraphy = "Calligraphy", meeting = "Meeting", reading = "Reading", cosplay = "Cosplay", diy = "DIY"
    
    var lineart: LinearGradient {
        
        switch self {
            
        case .drawing :
            return LinearGradient(colors: [Color.drawingGradient1, Color.drawingGradient2], startPoint: .top, endPoint: .bottom)
            
        case .writing :
            return LinearGradient(colors: [Color.writingGradient1, Color.writingGradient2], startPoint: .top, endPoint: .bottom)
            
        case .calligraphy :
            return LinearGradient(colors: [Color.calligraphyGradient1, Color.calligraphyGradient2], startPoint: .top, endPoint: .bottom)
            
        case .meeting :
            return LinearGradient(colors: [Color.meetingGradient1, Color.meetingGradient2], startPoint: .top, endPoint: .bottom)
            
        case .reading :
            return LinearGradient(colors: [Color.readingGradient1, Color.readingGradient2], startPoint: .top, endPoint: .bottom)
            
        case .cosplay :
            return LinearGradient(colors: [Color.cosplayGradient1, Color.cosplayGradient2], startPoint: .top, endPoint: .bottom)
            
        case .diy :
            return LinearGradient(colors: [Color.diyGradient1, Color.diyGradient2], startPoint: .top, endPoint: .bottom)
            
        }
    }
    
    var color: Color {
        
        switch self {
            
        case .drawing :
            return .drawingBubble
            
        case .writing :
            return .writingBubble
            
        case .calligraphy :
            return .calligraphyBubble
            
        case .meeting :
            return .meetingBubble
            
        case .reading :
            return .readingBubble
            
        case .cosplay :
            return .cosplayBubble
            
        case .diy :
            return .diyBubble
            
        }
    }
}

