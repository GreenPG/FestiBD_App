//
//  Untitled.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct MiniCardWorkshopComponent: View {
    let workshopModel: WorkshopModel
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .stroke(lineWidth: 5)
                .frame(width: 365, height: 115)
            
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .foregroundStyle(workshopModel.categoryTheme.lineart)
                .frame(width: 360, height: 110)
            
            Circle()
                .frame(width: 70)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: 142, y: -17)
            Circle()
                .frame(width: 30)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: 85, y: 15)
            Circle()
                .frame(width: 60)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: -146, y: 23)
            Circle()
                .frame(width: 30)
                .foregroundStyle(workshopModel.categoryTheme.color.opacity(0.3))
                .offset(x: -90, y: 10)
            
            HStack{
                ZStack{
                    Text("\(workshopModel.name)")
                        .font(Font.custom("ComicsTricks", size: 22))
                        .fontWeight(.bold)
                        .padding(10)
                        .background(.white)
                        .border(.black, width: 5)
                    
                }
                .offset(x: 18, y: -38)
                Spacer()
            }
            HStack{
                Spacer()
                Text("\(workshopModel.start_time.formatted(date: .omitted, time: .shortened)) -   \(workshopModel.end_time.formatted(date: .omitted, time: .shortened))")
                    .font(Font.custom("Cause-Regular", size: 20))
                    .padding(.trailing, 25)
            }
            .offset(y: 40)
            
            HStack{
            Button{
                
            }label: {
                
                ZStack{
                    UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 0, bottomTrailingRadius: 20, topTrailingRadius: 20)
                        .frame(width: 130, height: 45)
                        .foregroundStyle(.black)
                    UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 0, bottomTrailingRadius: 20, topTrailingRadius: 20)
                        .frame(width: 122, height: 37)
                        .foregroundStyle(.orange)
                    HStack{
                        Text("Cancel")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .font(.title3)
                        Image(systemName: "ticket")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                      }
                     }
                  }
            }
            .offset(x: -125, y: 25)
        }
    }
}

#Preview {
    MiniCardWorkshopComponent(workshopModel: WorkshopModel(id: UUID(),name: "DRAWING A STORYBOARD",start_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,end_time: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!,remainingTickets: 10,description: "Join this workshop to learn how to create and etablish a storyboard.",categoryTheme: .drawing))
}
