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
                .foregroundStyle(workshopModel.categoryTheme.lineart)
                .frame(width: 360, height: 165)
            
            Circle()
                .frame(width: 110)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: 124, y: -27)
            Circle()
                .frame(width: 30)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: 40, y: 10)
            Circle()
                .frame(width: 80)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: -135, y: 40)
            Circle()
                .frame(width: 30)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: -160, y: -17)
            
            VStack{
                HStack{
                    ZStack(alignment: .leading){

                        Text("\(workshopModel.name)")
                            .font(Font.custom("ComicsTricks", size: 22))
                            .fontWeight(.bold)
                            .padding(10)
                            .background(.white)
                            .border(.black, width: 5)
                        
                    }
                    
                   
                    Spacer()
                }
                
                    HStack{
                        
                        Image(systemName: "clock")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        Text("\(workshopModel.start_time.formatted(date: .omitted, time: .shortened)) -   \(workshopModel.end_time.formatted(date: .omitted, time: .shortened))")
                            .font(Font.custom("Cause-Regular", size: 18))
                            
                        Spacer()
                    }
                    .padding(.leading,10)
                    .padding(.bottom,2)
                    
                    
                    HStack{
                        
                        Image(systemName: "tag")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        Text("\(workshopModel.categoryTheme.rawValue)")
                            .font(Font.custom("Cause-Regular", size: 18))
                        Spacer()
                    }
                    .padding(.leading,10)
                
               
            }
            .offset(x: 18, y: -30)
            
            ZStack{
                UnevenRoundedRectangle(topLeadingRadius: 20,bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0)
                    .frame(width: 209, height: 45)
                    .foregroundStyle(.black)
                UnevenRoundedRectangle(topLeadingRadius: 20,bottomLeadingRadius: 20, bottomTrailingRadius: 0, topTrailingRadius: 0)
                    .frame(width: 200, height: 35)
                    .foregroundStyle(.accent)
                HStack{
                    Image(systemName: "ticket")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Text("only \(workshopModel.remainingTickets) tickets left")
                        .font(Font.custom("Cause-Regular", size: 18))
                        .foregroundStyle(.white)
                }
            }
            .offset(x: 85, y: 50)
        }
    }
}

#Preview {
    CardWorkshopComponent(workshopModel: WorkshopModel(id: UUID(),name: "DRAWING A STORYBOARD",start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,remainingTickets: 10,description: "Join this workshop to learn how to create and etablish a storyboard.",categoryTheme: .drawing))
}
