//
//  ReservationDTO.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 01/11/2026.
//

import Foundation

struct ReservationDTO: Decodable {
    var id: UUID
    var status: String
    var workshopID: UUID
    var workshopName : String
    var workshopStartTime: Date
    var workshopEndTime: Date
    var workshopCategory: String
}

extension ReservationDTO {
    func toModel() ->  ReservationModel {
        var statusEnum: ReservationStatus {
            switch status {
            case "validated":
                    .validated
            case "cancelled":
                    .cancelled
            case "pending":
                    .pending
            default:
                    .cancelled
            }
        }
        var categoryTheme: CategoryColor {
            switch workshopCategory.lowercased() {
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
        return ReservationModel(
            id: id,
            status: statusEnum,
            workshopID: workshopID,
            workshopName: workshopName,
            workshopCategory: categoryTheme,
            workshopStartTime: workshopStartTime,
            workshopEndTime: workshopEndTime
        )
    }
}
