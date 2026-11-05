//
//  HasUserReservedDTO.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 02/11/2026.
//

import Foundation

struct HasUserReservedDTO: Decodable {
    var hasReserved: Bool
    var reservationID: UUID?
}
