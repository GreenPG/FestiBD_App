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
    let capacity: Int
    let totalSubscribers: Int
    let description: String
    let category: String
}
