//
//  WorkshopDTO.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 01/11/2026.
//

import Foundation

struct WorkshopDTO: Decodable {
    var id: UUID
    var name: String
    var startTime: Date
    var endTime: Date
    var category_id: UUID
    var category_name: String
    var capacity: Int
    var totalSubscribers: Int
    var description: String
}

extension WorkshopDTO {

    func toModel() -> WorkshopModel {
        var categoryTheme: CategoryColor {
            switch category_name.lowercased() {
            case "writing":
                return .writing
            case "drawing":
                return .drawing
            case "calligraphy":
                return .calligraphy
            case "meeting":
                return .meeting
            case "reading":
                return .reading
            case "cosplay":
                return .cosplay
            case "diy":
                return .diy
            default:
                return .calligraphy
            }
        }
        return WorkshopModel(
            id: id,
            name: name,
            startTime: startTime,
            endTime: endTime,
            remainingTickets: capacity - totalSubscribers,
            description: description,
            categoryTheme: categoryTheme
        )
    }
}
