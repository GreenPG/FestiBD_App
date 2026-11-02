//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct MiddleRightTopComicComponentView: View {
    
    let workshopModel : WorkshopModel
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.yellowComic)
                .stroke(.black, lineWidth: 2)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.redComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 20, height: 20)
                .offset(x: 75, y: -50)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.blueComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 20, height: 20)
                .offset(x: -75, y: 50)
            
            CalendarComponentView()
            
            VStack{
                Text("\(workshopModel.end_time.formatted(.dateTime.day()))")
                Text("\(workshopModel.end_time.formatted(.dateTime.weekday(.wide)).uppercased())")
            }
            .font(Font.custom("ComicsTricks", size: 25))
            .bold()
            .padding(.top, 35)
            .rotationEffect(.degrees(-5))
        }
    }
}

#Preview {
    MiddleRightTopComicComponentView(workshopModel: workshops[0])
}
