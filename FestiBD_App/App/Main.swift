//
//  Main.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 08/10/2026.
//

import SwiftUI

struct Main: View {

    @State private var router = Router()

    var body: some View {
        if AccountManager.shared.isLoggedIn {
            NavigationStack {
                TabBarView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .Login:
                            LoginView()
                        case .Signin:
                            SignInView()
                        case .Home:
                            HomePageView()
                        case .WorkshopDetail(let id):
                            //TODO: navigation to workshop detail
                            HomePageView()
                        case .Reservations:
                            MyReservationsView()
                        case .TabBar:
                            TabBarView()
                        }
                    }
            }
            .environment(router)
        } else {
            AuthView()
        }
    }
}

#Preview {
    Main()
}
