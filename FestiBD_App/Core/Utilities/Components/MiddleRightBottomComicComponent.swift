//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct MiddleRightBottomComicComponentView: View {
    
    let workshopModel : WorkshopModel
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.blueComic)
                .stroke(.black, lineWidth: 2)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.white)
                .stroke(.black, lineWidth: 2)
                .frame(width: 20, height: 20)
                .offset(x: 77, y: -60)
            
            UnevenRoundedRectangle(
                cornerRadii:
                        .init(
                            topLeading: 20,
                            bottomLeading: 0,
                            bottomTrailing: 20,
                            topTrailing: 0
                        )
            )
            .fill(.white)
            .stroke(.black, lineWidth: 2)
            .frame(width: 125, height: 125)
            
            Text("ONLY \(workshopModel.remainingTickets) TICKETS LEFT")
                .foregroundStyle(.blueComic)
                .font(Font.custom("ComicsTricks", size: 25))
                .padding(.horizontal, 30)
        }
    }
}

#Preview {
    MiddleRightBottomComicComponentView(workshopModel: workshops[0])
}
