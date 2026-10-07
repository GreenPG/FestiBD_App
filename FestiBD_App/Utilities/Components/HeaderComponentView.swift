//
//  HeaderComponentView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//

import SwiftUI

struct HeaderComponentView : View {
    var isSmall : Bool = false
    var body: some View {


        VStack{
            ZStack{

                Rectangle()
                    .frame(width: 438, height: isSmall ? 170 : 390)
                    .foregroundStyle(.accent)
                    .offset(x: 0, y: -40)

                Rectangle()
                    .frame(width: 438, height: isSmall ? 170 : 400)
                    .foregroundStyle(.accent)
                    .rotationEffect(Angle(degrees: -5))

            }
            .ignoresSafeArea()


            Divider()
                .frame(minHeight: 20)
                .overlay(Color.appYellow)
                .rotationEffect(Angle(degrees: -5))
                .offset(y: -20)
        }
    }
}

#Preview {
    HeaderComponentView()
}
