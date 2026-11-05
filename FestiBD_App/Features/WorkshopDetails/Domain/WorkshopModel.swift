//
//  WorkshopModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 30/09/2026.
//

import Foundation
import SwiftUI

struct WorkshopModel: Identifiable {
    let id: UUID
    let name: String
    let startTime: Date
    let endTime: Date
    let remainingTickets: Int
    let description: String
    let categoryTheme : CategoryColor
}
