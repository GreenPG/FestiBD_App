//
//  WorkshopDetailViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 02/11/2026.
//

import Foundation

@Observable
final class WorkshopDetailViewModel {
    var state = WorkshopDetailViewUIState()

    func fetchWorkshop(for workshopID: UUID) async {
        state.isWorkshopLoading = true
        do {
            let result = try await WebService.shared.apiCall(
                url: "\(WebService.url)/workshops/\(workshopID)",
                method: .get,
                responseType: WorkshopDTO.self,
                token: KeychainManager.get("jwttoken")
            )

            state.workshop = result.toModel()

        } catch {
            state.errorMessage = "An error happened when fetching workshop information: \(error)"
            state.isErrorDialogPresented = true
        }
        state.isWorkshopLoading = false
    }

    func fetchReservationStatus(for workshopID: UUID) async {
        do {
            let result = try await WebService.shared.apiCall(
                url: "\(WebService.url)/workshops/has_reserved/\(workshopID)",
                method: .get,
                responseType: HasUserReservedDTO.self,
                token: KeychainManager.get("jwttoken")
            )


            state.isBooked = result.hasReserved
            if state.isBooked {
                state.reservationID = result.reservationID
            }
        } catch {
            state.errorMessage = "Failed to fetch reservation status. Reservation button will be disabled"
            state.isErrorDialogPresented = true
            state.isReservationButtonDisabled = true
        }
    }

    func reservationButtonListener() async {
        state.isReservationLoading = true
        state.isReservationButtonDisabled = true
        if state.isBooked {
            await cancelReservation()
        } else {
            await reserveWorkshop()
        }
        state.isReservationLoading = false
        state.isReservationButtonDisabled = false

    }

    private func reserveWorkshop() async {
        do {
            let result = try await WebService.shared.apiCall(
                url: "\(WebService.url)/reservations",
                method: .post,
                responseType: CreateReservationResponseDTO.self,
                body: CreateReservationRequestDTO(workshopID: state.workshop!.id),
                token: KeychainManager.get("jwttoken")
            )
            state.isBooked = true
            state.reservationID = result.id
            state.isSuccessDialogPresented = true
        } catch {
            state.errorMessage = "An error happened during reservation process: \(error)"
            state.isErrorDialogPresented = true
        }
    }

    private func cancelReservation() async {
        do {
            let _ = try await WebService.shared.apiCall(
                url: "\(WebService.url)/reservations/\(state.reservationID!)",
                method: .delete,
                responseType: CreateReservationResponseDTO.self,
                token: KeychainManager.get("jwttoken")
            )
            state.isBooked = false
            state.isSuccessDialogPresented = true
        } catch {
            state.errorMessage = "An error happened during cancellation process: \(error)"
            state.isErrorDialogPresented = true
        }
    }
}
