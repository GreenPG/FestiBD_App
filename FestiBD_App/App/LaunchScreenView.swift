//
//  LaunchScreeView.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 03/11/2026.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            Color.accentColor
            VStack(spacing: 50) {
                Image("Logo")
                ProgressView()
                    .progressViewStyle(.circular)
                    .tint(.white)
                    .scaleEffect(2)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LaunchScreenView()
}
