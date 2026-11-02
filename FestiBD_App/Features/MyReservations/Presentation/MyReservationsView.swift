//
//  MyReservationsView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 07/10/2026.
//
import SwiftUI

struct MyReservationsView : View {

    @State var viewModel = MyReservationsViewModel()
    private var router = Router.shared

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
                    let reservations = viewModel.getReservations(for: .friday)
                    if reservations.isEmpty {
                        Text("No reservations this day")
                            .font(Font.custom("Armata", size: 20))
                            .multilineTextAlignment(.center)
                    }else {
                        ForEach(reservations) { reservation in
                            Button {
                                router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                            } label: {
                                MiniCardWorkshopComponent(reservation: reservation)
                            }
                            .tint(.black)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom,30)
                ReservationsDayTittleComponent(weekEnd: .saturday)
                VStack(spacing: 0){
                    let reservations = viewModel.getReservations(for: .saturday)
                    if reservations.isEmpty {
                        Text("No reservations this day")
                            .font(Font.custom("Armata", size: 20))
                            .multilineTextAlignment(.center)
                    } else {
                        ForEach(reservations) { reservation in
                            Button {
                                router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                            } label: {
                                MiniCardWorkshopComponent(reservation: reservation)
                            }
                            .tint(.black)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom,30)
                ReservationsDayTittleComponent(weekEnd: .sunday)
                VStack(spacing: 0){
                    let reservations = viewModel.getReservations(for: .sunday)
                    if reservations.isEmpty {
                        Text("No reservations this day")
                            .font(Font.custom("Armata", size: 20))
                            .multilineTextAlignment(.center)
                    } else {
                        ForEach(reservations) { reservation in
                            Button {
                                router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                            } label: {
                                MiniCardWorkshopComponent(reservation: reservation)
                            }
                            .tint(.black)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom,30)
            }
        }
        .task {
            await viewModel.fetchReservations()
        }
        .environment(viewModel)
        .ignoresSafeArea()
    }
}

#Preview {
    MyReservationsView()
}
