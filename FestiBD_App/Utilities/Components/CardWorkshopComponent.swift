//
//  CardWorkshopComponent.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct CardWorkshopComponent: View {
    let workshopModel : WorkshopModel
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 20, bottomTrailingRadius: 20, topTrailingRadius: 20)
                .stroke(lineWidth: 5)
                .frame(width: 365, height: 170)
            
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 15, bottomTrailingRadius: 15, topTrailingRadius: 15)
                .foregroundStyle(LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .opacity(0.6)
                .frame(width: 360, height: 165)
            
            Circle()
                .frame(width: 110)
                .foregroundStyle(.white.quinary)
                .offset(x: 120, y: -25)
            Circle()
                .frame(width: 40)
                .foregroundStyle(.white.quinary)
                .offset(x: 60, y: 40)
            Circle()
                .frame(width: 80)
                .foregroundStyle(.white.quinary)
                .offset(x: -130, y: 55)
            Circle()
                .frame(width: 40)
                .foregroundStyle(.white.quinary)
                .offset(x: -90, y: -10)
            
            HStack{
                ZStack{
                    Rectangle()
                        .frame(maxWidth: 300,maxHeight: 50)
                        .foregroundStyle(.white)
                        .border(.black, width: 5)
                        
                        
                    Text("\(workshopModel.name)")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                }
                .padding(.leading,19)
                .offset(y: -63)
                Spacer()
            }
            
            VStack(alignment: .leading){
                HStack{
                    
                    Image(systemName: "clock")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Text("\(workshopModel.start_time.formatted(date: .omitted, time: .shortened)) AM - \(workshopModel.end_time.formatted(date: .omitted, time: .shortened)) AM")
                    Spacer()
                }
                HStack{
                    
                    Image(systemName: "tag")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Text("\(workshopModel.category)")
                }
            }
            .padding(.leading,30)
            
            ZStack{
                UnevenRoundedRectangle(topLeadingRadius: 20,bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0)
                    .frame(width: 209, height: 45)
                    .foregroundStyle(.black)
                UnevenRoundedRectangle(topLeadingRadius: 20,bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0)
                    .frame(width: 200, height: 35)
                    .foregroundStyle(.orange)
                HStack{
                    Image(systemName: "ticket")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Text("only \(workshopModel.remainingTickets) tickets left")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
            }
            .offset(x: 85, y: 50)
        }
    }
}

#Preview {
    CardWorkshopComponent(workshopModel: WorkshopModel(id: UUID(),name: "DRAWING A STORYBOARD",start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,remainingTickets: 10,description: "Join this workshop to learn how to create and etablish a storyboard.",category: "Drawing"))
}
