//
//  CreateReservationResponseDTO.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 02/11/2026.
//

import Foundation
struct CreateReservationResponseDTO: Decodable {
    let id: UUID
    let status: String
    let userID: UUID
    let workshopID: UUID
}
