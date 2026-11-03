//
//  WorkshopDetailViewUIState.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 02/11/2026.
//

import Foundation

struct WorkshopDetailViewUIState {
    var workshop: WorkshopModel? = nil
    var isBooked = false
    var reservationID : UUID?
    var isSuccessDialogPresented = false
    var isErrorDialogPresented = false
    var errorMessage = ""
    var isReservationLoading = false
    var isWorkshopLoading = false
    var isReservationButtonDisabled = false
}
