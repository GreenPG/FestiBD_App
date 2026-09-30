//
//  HeaderComponentView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//

import SwiftUI

struct HeaderComponentView : View {
    var body: some View {
        var isSmall : Bool = false
        
        VStack{
            ZStack{
                
                Rectangle()
                    .frame(width: 438, height: isSmall ? 290 : 390)
                    .foregroundStyle(.orange)
                    .offset(x: 0, y: -40)
                
                Rectangle()
                    .frame(width: 438, height: isSmall ? 290 : 390)
                    .foregroundStyle(.orange)
                    .rotationEffect(Angle(degrees: -5))
                
            }
            .ignoresSafeArea()
            
            
            Divider()
                .frame(minHeight: 20)
                .overlay(Color.yellow)
                .rotationEffect(Angle(degrees: -5))
                .offset(y: -75)
            Spacer()
    }
  }
}

#Preview {
    HeaderComponentView()
}
