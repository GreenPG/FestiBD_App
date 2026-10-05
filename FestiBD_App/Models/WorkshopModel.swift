//
//  WorkshopModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 30/09/2026.
//

import Foundation

struct WorkshopModel: Identifiable {
    let id: UUID
    let name: String
    let start_time: Date
    let end_time: Date
    let remainingTickets: Int
    let description: String
    let category: String
}

let calendar = Calendar.current

var workshops: [WorkshopModel] = [
    
    WorkshopModel(id: UUID(),
                  name: "DRAWING A STORYBOARD",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,
                  remainingTickets: 10,
                  description: "Join this workshop to learn how to create and etablish a storyboard.",
                  category: "Drawing"),
    WorkshopModel(id: UUID(),
                  name: "MEETING ENKI BILAL",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 30))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 00))!,
                  remainingTickets: 2,
                  description: "Master Meeting : with conference about his last comic book 'Bug : Book 4', and dedication part. ",
                  category: "Meeting"),
    WorkshopModel(id: UUID(),
                  name: "CRAFT A WEAPON",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 30))!,
                  remainingTickets: 5,
                  description: "Learn to make your own weapon to embellish your character.",
                  category: "DIY"),
    WorkshopModel(id: UUID(),
                  name: "CALLIGRAPHY : HIRAGANA",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 12, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 13, minute: 00))!,
                  remainingTickets: 2,
                  description: "Do you want to learn Japanese ? Try a first lesson with Hiragana syllabary.",
                  category: "Calligraphy"),
    WorkshopModel(id: UUID(),
                  name: "SEW YOUR OWN COSTUME",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 13, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 15, minute: 00))!,
                  remainingTickets: 7,
                  description: "You want to make your own costume to join Cosplay's universe ? Learn how to sew your fabric and more.",
                  category: "DIY"),
    WorkshopModel(id: UUID(),
                  name: "COSPLAY COSTUME",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 15, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 16, minute: 00))!,
                  remainingTickets: 6,
                  description: "Come defend your favorite character with your best costume and your improvisation's skills. ",
                  category: "Cosplay"),
    WorkshopModel(id: UUID(),
                  name: "MEETING JUNJI ITO",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 10, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 00))!,
                  remainingTickets: 2,
                  description: "Master Meeting : with conference about his art and career. Dedication part include.",
                  category: "Meeting"),
    WorkshopModel(id: UUID(),
                  name: "PARTICIPATING READING",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 10, minute: 30))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 30))!,
                  remainingTickets: 4,
                  description: "Come to join a dynamic reading groupe, where each person has a role to play.",
                  category: "Reading"),
    WorkshopModel(id: UUID(),
                  name: "WRITE YOUR UNIVERSE",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 11, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 12, minute: 30))!,
                  remainingTickets: 6,
                  description: "Learn how to ink your drawings to bring them to life.",
                  category: "Writing"),
    WorkshopModel(id: UUID(),
                  name: "COSPLAY CONTEST",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 13, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 14, minute: 30))!,
                  remainingTickets: 8,
                  description: "Come defend your favorite character with your best costume and your improvisation's skills. ",
                  category: "Cosplay"),
    WorkshopModel(id: UUID(),
                  name: "LEARN HOW TO INK",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 14, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 15, minute: 30))!,
                  remainingTickets: 7,
                  description: "Learn how to ink your drawings to bring them to life.",
                  category: "Drawing"),
    WorkshopModel(id: UUID(),
                  name: "MAKE A WIG",
                  start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 15, minute: 00))!,
                  end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 14, hour: 16, minute: 30))!,
                  remainingTickets: 3,
                  description: "Sign up at this workshop to see the creative process of a wig.",
                  category: "DIY"),
]
