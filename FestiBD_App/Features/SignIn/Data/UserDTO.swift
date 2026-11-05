//
//  UserDTO.swift
//  FestibdVapor
//
//  Created by ShoSho on 02/10/2026.
//

import Foundation

struct UserDTO: Codable {
    let id: UUID?
    let username: String
    let role: String
    let email: String
}
