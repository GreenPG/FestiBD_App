//
//  WorkshopModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 30/09/2026.
//

import Foundation
import SwiftUI

struct WorkshopModel: Identifiable {
    let id: UUID
    let name: String
    let start_time: Date
    let end_time: Date
    let remainingTickets: Int
    let description: String
    let categoryTheme : CategoryColor
}

let calendar = Calendar.current

var workshops: [WorkshopModel] = [
    
    WorkshopModel(id: UUID(),
                  name: "DRAWING A STORYBOARD",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,
                  remainingTickets: 10,
                  description: "Join this workshop to learn how to create and etablish a storyboard.",
                  categoryTheme: .drawing),
    WorkshopModel(id: UUID(),
                  name: "MEETING ENKI BILAL",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 30))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 00))!,
                  remainingTickets: 2,
                  description: "Master Meeting : with conference about his last comic book 'Bug : Book 4', and dedication part. ",
                  categoryTheme: .meeting),
    WorkshopModel(id: UUID(),
                  name: "CRAFT A WEAPON",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 30))!,
                  remainingTickets: 5,
                  description: "Learn to make your own weapon to embellish your character.",
                  categoryTheme: .diy),
    WorkshopModel(id: UUID(),
                  name: "CALLIGRAPHY : HIRAGANA",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 13, minute: 00))!,
                  remainingTickets: 2,
                  description: "Do you want to learn Japanese ? Try a first lesson with Hiragana syllabary.",
                  categoryTheme: .calligraphy),
    WorkshopModel(id: UUID(),
                  name: "SEW YOUR OWN COSTUME",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 13, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 15, minute: 00))!,
                  remainingTickets: 7,
                  description: "You want to make your own costume to join Cosplay's universe ? Learn how to sew your fabric and more.",
                  categoryTheme: .diy),
    WorkshopModel(id: UUID(),
                  name: "COSPLAY CONTEST",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 15, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 16, minute: 00))!,
                  remainingTickets: 6,
                  description: "Come defend your favorite character with your best costume and your improvisation's skills. ",
                  categoryTheme: .cosplay),
    WorkshopModel(id: UUID(),
                  name: "MEETING JUNJI ITO",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 10, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 00))!,
                  remainingTickets: 2,
                  description: "Master Meeting : with conference about his art and career. Dedication part include.",
                  categoryTheme: .meeting),
    WorkshopModel(id: UUID(),
                  name: "PARTICIPATING READING",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 10, minute: 30))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 30))!,
                  remainingTickets: 4,
                  description: "Come to join a dynamic reading groupe, where each person has a role to play.",
                  categoryTheme: .reading),
    WorkshopModel(id: UUID(),
                  name: "WRITE YOUR UNIVERSE",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 12, minute: 30))!,
                  remainingTickets: 6,
                  description: "Learn how to ink your drawings to bring them to life.",
                  categoryTheme: .writing),
    WorkshopModel(id: UUID(),
                  name: "COSPLAY CONTEST",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 13, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 14, minute: 30))!,
                  remainingTickets: 8,
                  description: "Come defend your favorite character with your best costume and your improvisation's skills. ",
                  categoryTheme: .cosplay),
    WorkshopModel(id: UUID(),
                  name: "LEARN HOW TO INK",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 14, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 15, minute: 30))!,
                  remainingTickets: 7,
                  description: "Learn how to ink your drawings to bring them to life.",
                  categoryTheme: .drawing),
    WorkshopModel(id: UUID(),
                  name: "MAKE A WIG",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 15, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 16, minute: 30))!,
                  remainingTickets: 3,
                  description: "Sign up at this workshop to see the creative process of a wig.",
                  categoryTheme: .diy),
]


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
