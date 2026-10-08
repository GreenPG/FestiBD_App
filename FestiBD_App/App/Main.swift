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
        NavigationStack(path: $router.path) {
            //TODO: handle display of login or home silo depending of existing credentials
            TabView {
                Tab("Landing", systemImage: "house") {
                    HomePageView()
                }
                Tab("My Reservations", systemImage: "calendar") {
                    MyReservationsView()
                }
            }
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
                    }
                }
        }
        .environment(router)
    }
}

#Preview {
    Main()
}
