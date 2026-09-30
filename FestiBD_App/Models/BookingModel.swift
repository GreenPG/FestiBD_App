//
//  BookingModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 30/09/2026.
//

import Foundation

enum BookingStatus {
    case validated
    case pending
    case cancelled
}

struct BookingModel: Identifiable {
    let id: UUID
    let status: BookingStatus
    let workshopID: UUID
    let workshopName: String
    let workshopCategory: String
    let workshopStartTime: Date
    let workshopEndTime: Date
}
