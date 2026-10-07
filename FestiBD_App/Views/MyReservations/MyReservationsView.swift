//
//  MyReservationsView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 07/10/2026.
//
import SwiftUI

struct MyReservationsView : View {
    var body: some View {
        
        VStack{
            ScrollView {
                ZStack{
                    HeaderComponentView(isSmall: true)
                    Text("MY RESERVATIONS")
                        .font(Font.custom("ComicsTricks", size: 40))
                        .foregroundStyle(.white)
                }
                
                ReservationsDayTittleComponent(weekEnd: .friday)
                
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        MiniCardWorkshopComponent(workshopModel: workshops)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)
                
               
                ReservationsDayTittleComponent(weekEnd: .saturday)
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        MiniCardWorkshopComponent(workshopModel: workshops)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)

                ReservationsDayTittleComponent(weekEnd: .sunday)
                VStack(spacing: 0){
                    
                    ForEach(workshops) { workshops in
                        MiniCardWorkshopComponent(workshopModel: workshops)
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
}
