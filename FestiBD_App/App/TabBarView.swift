//
//  TabView.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 23/10/2026.
//

import SwiftUI

struct TabBarView: View {

    @State private var router = Router()

    var body: some View {
        TabView {
            Tab("Landing", systemImage: "house") {
                NavigationStack(path: $router.path) {
                    HomePageView()
                        .navigationDestination(for: Route.self) { route in
                            switch route {
                            case .Login:
                                LoginView()
                            case .Signin:
                                SignInView()
                            case .Home:
                                HomePageView()
                            case .WorkshopDetail(let id):
                                WorkshopDetailView(workshopID: id)
                            case .Reservations:
                                MyReservationsView()
                            case .TabBar:
                                TabBarView()
                            }
                        }
                }
                .environment(router)
            }
            Tab("My Reservations", systemImage: "calendar") {
                NavigationStack(path: $router.path) {
                    MyReservationsView()
                        .navigationDestination(for: Route.self) { route in
                            switch route {
                            case .Login:
                                LoginView()
                            case .Signin:
                                SignInView()
                            case .Home:
                                HomePageView()
                            case .WorkshopDetail(let id):
                                WorkshopDetailView(workshopID: id)
                            case .Reservations:
                                MyReservationsView()
                            case .TabBar:
                                TabBarView()
                            }
                        }
                }
                .environment(router)
            }
        }
        .tint(.accent)
    }
}

#Preview {
    TabBarView()
}
