//
//  MyReservationsView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 07/10/2026.
//
import SwiftUI

struct MyReservationsView : View {

    @Environment(Router.self) private var router

    var body: some View {
        
        VStack{
            ScrollView {
                ZStack{
                    HeaderComponentView(headerSize: .Reservations)
                    Text("MY RESERVATIONS")
                        .font(Font.custom("ComicsTricks", size: 40))
                        .foregroundStyle(.white)
                }
                
                ReservationsDayTittleComponent(weekEnd: .friday)
                
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        Button {
                            router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                        } label: {
                            MiniCardWorkshopComponent(workshopModel: workshops)
                        }
                        .tint(.black)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)
                
                
                ReservationsDayTittleComponent(weekEnd: .saturday)
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        Button {
                            router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                        } label: {
                            MiniCardWorkshopComponent(workshopModel: workshops)
                        }
                        .tint(.black)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)
                
                ReservationsDayTittleComponent(weekEnd: .sunday)
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        Button {
                            router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                        } label: {
                            MiniCardWorkshopComponent(workshopModel: workshops)
                        }
                        .tint(.black)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MyReservationsView()
        .environment(Router())
}
