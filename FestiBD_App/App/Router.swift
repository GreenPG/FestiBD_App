//
//  Router.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 08/10/2026.
//

import SwiftUI

enum Route: Hashable {
    case Login
    case Signin
    case Home
    case WorkshopDetail(workshopId: UUID)
    case Reservations
}

@Observable
class Router {
    var path = NavigationPath()

    func navigate(to route: Route) {
        path.append(route)
    }

    func navigateBack() {
        path.removeLast()
    }
}
