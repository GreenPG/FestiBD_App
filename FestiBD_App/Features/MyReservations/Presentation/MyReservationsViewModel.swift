//
//  MyReservationsViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 01/11/2026.
//

import Foundation

@Observable
final class MyReservationsViewModel {
    var state = MyReservationsUIState()

    func fetchReservations() async {
        do {
            let reservationDTOs = try await WebService.shared.apiCall(
                url: "\(WebService.url)/reservations",
                method: .get,
                responseType: [ReservationDTO].self,
                token: KeychainManager.get("jwttoken")
            )
            state.reservations = reservationDTOs.map { reservatioDTO in
                reservatioDTO.toModel()
            }
        } catch {
            print(error)
        }
    }

    func getReservations(for day: WeekEnd) -> [ReservationModel] {
        let calendar = Calendar.current
        var date: Date
        switch day {
        case .friday:
            date = calendar.date(from: DateComponents(year: 2026, month: 11, day: 13))!
        case .saturday:
            date = calendar.date(from: DateComponents(year: 2026, month: 11, day: 14))!
        case .sunday:
            date = calendar.date(from: DateComponents(year: 2026, month: 11, day: 15))!
        }
        return  state.reservations.filter({
            return calendar
                .compare(date, to: $0.workshopStartTime, toGranularity: .day) == .orderedSame
        })
    }

    func cancelReservation(for id: UUID) async {
        do {
            let _ = try await WebService.shared.apiCall(
                url: "\(WebService.url)/reservations/\(id)",
                method: .delete,
                responseType: DeleteReservationDTO.self,
                token: KeychainManager.get("jwttoken")
            )
            await fetchReservations()
        } catch {
            print(error)
        }
    }
}
