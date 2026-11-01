//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct MiddleLeftComicComponentView: View {
    
    let workshopModel : WorkshopModel
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.redComic)
                .stroke(.black, lineWidth: 2)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.blueComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 30, height: 30)
                .offset(x: -60, y: 125)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.white)
                .stroke(.black, lineWidth: 2)
                .frame(width: 30, height: 30)
                .offset(x: 60, y: -125)
            
            StarShape(corners: 15, smoothness: 0.7)
                .fill(.yellowComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 175, height: 200)
            
            StarShape(corners: 15, smoothness: 0.7)
                .fill(.white)
                .frame(width: 160, height: 180)
            
            VStack{
                Text("\(workshopModel.start_time.formatted(date: .omitted, time: .shortened))")
                Text("-")
                Text("\(workshopModel.end_time.formatted(date: .omitted, time: .shortened))")
            }
            .foregroundStyle(.redComic)
            .font(Font.custom("ComicsTricks", size: 22))
            .bold()
        }
    }
}

#Preview {
    MiddleLeftComicComponentView(workshopModel: WorkshopModel(id: UUID(),name: "DRAWING A STORYBOARD",start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,remainingTickets: 10,description: "Join this workshop to learn how to create and etablish a storyboard.",categoryTheme: .drawing))
}
