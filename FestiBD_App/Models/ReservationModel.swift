//
//  BookingModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 30/09/2026.
//

import Foundation

enum ReservationStatus {
    case validated
    case pending
    case cancelled
}

struct ReservationModel: Identifiable {
    let id: UUID
    let status: ReservationStatus
    let workshopID: UUID
    let workshopName: String
    let workshopCategory: String
    let workshopStartTime: Date
    let workshopEndTime: Date
}
