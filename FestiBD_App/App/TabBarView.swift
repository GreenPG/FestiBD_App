//
//  TabView.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 23/10/2026.
//

import SwiftUI

struct TabBarView: View {

    @Environment(Router.self) private var router

    var body: some View {
        TabView {
            Tab("Landing", systemImage: "house") {
                HomePageView()
            }
            Tab("My Reservations", systemImage: "calendar") {
                MyReservationsView()
            }
        }
        .tint(.accent)
    }
}

#Preview {
    TabBarView()
}
