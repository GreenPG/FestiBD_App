//
//  Main.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 08/10/2026.
//

import SwiftUI

struct Main: View {

    var body: some View {
        ZStack {
            switch AccountManager.shared.isLoggedIn {
            case .loggedIn:
                TabBarView()
                    .navigationTransition(.crossFade)
            case .disconnected:
                AuthView()
                    .navigationTransition(.crossFade)
            case .unknown:
                LaunchScreenView()
                    .navigationTransition(.crossFade)
            }
        }
        .animation(.easeInOut(duration: 0.4), value: AccountManager.shared.isLoggedIn)
    }
}

#Preview {
    Main()
}
