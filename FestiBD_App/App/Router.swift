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
    case TabBar
}

@Observable
class Router {

    static let shared = Router()

    var path: [Route] = []

    func navigate(to route: Route) {
        print(path)
        path.append(route)
        print(path)
    }

    func navigateBack() {
        print(path)
        path.removeLast()
        print(path)
    }
}
