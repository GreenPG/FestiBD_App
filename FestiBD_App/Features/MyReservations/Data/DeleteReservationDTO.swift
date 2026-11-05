//
//  ReservationDTO.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 01/11/2026.
//

import Foundation

struct DeleteReservationDTO: Decodable {
    var id: UUID
    var status: String
    var workshopID: UUID
    var userID: UUID
}
