//
//  HomePageViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 01/11/2026.
//

import Foundation


@Observable
final class HomePageViewModel {
    var state = HomePageUIState()

    func fetchWorkshops() async {
        let dateString: String
        switch state.activeDay {
        case .friday:
            dateString = "2026-09-13T00:00:00Z"
        case .saturday:
            dateString = "2026-09-14T00:00:00Z"
        case .sunday:
            dateString = "2026-09-15T00:00:00Z"
        }
        do {
            let workshopsDTO: [WorkshopDTO] = try await WebService.shared.apiCall(
                url: "\(WebService.url)/workshops/search?date=\(dateString)",
                method: .get,
                responseType: [WorkshopDTO].self,
                token: KeychainManager.get("jwttoken")
            )
            state.workshops = workshopsDTO.map { workshopDTO in
                workshopDTO.toModel()
            }
            print(state.workshops)
        } catch  {
            print(error)
        }

    }
}
