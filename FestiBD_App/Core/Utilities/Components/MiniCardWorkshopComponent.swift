//
//  Untitled.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct MiniCardWorkshopComponent: View {
    @Environment(MyReservationsViewModel.self) var viewModel
    let reservation: ReservationModel
    @State var isConfirmDialogPresented = false
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .stroke(lineWidth: 5)
                .frame(width: 365, height: 115)

            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .foregroundStyle(reservation.workshopCategory.lineart)
                .frame(width: 360, height: 110)

            Circle()
                .frame(width: 70)
                .foregroundStyle(reservation.workshopCategory.color.opacity(0.3))
                .offset(x: 142, y: -17)
            Circle()
                .frame(width: 30)
                .foregroundStyle(reservation.workshopCategory.color.opacity(0.3))
                .offset(x: 85, y: 15)
            Circle()
                .frame(width: 60)
                .foregroundStyle(reservation.workshopCategory.color.opacity(0.3))
                .offset(x: -146, y: 23)
            Circle()
                .frame(width: 30)
                .foregroundStyle(reservation.workshopCategory.color.opacity(0.3))
                .offset(x: -90, y: 10)

            HStack{
                ZStack{
                    Text("\(reservation.workshopName.uppercased())")
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
                Text(
                    "\(reservation.workshopStartTime.formatted(date: .omitted, time: .shortened)) -   \(reservation.workshopEndTime.formatted(date: .omitted, time: .shortened))"
                )
                .font(Font.custom("Cause-Regular", size: 20))
                .padding(.trailing, 25)
            }
            .offset(y: 40)

            HStack{
                Button{
                    isConfirmDialogPresented = true
                } label: {
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
                    .confirmationDialog(
                        "Confirm the reservation cancellation ?",
                        isPresented: $isConfirmDialogPresented,
                        titleVisibility: .visible
                    ) {
                        Button("Confirm", role: .destructive) {
                            Task {
                                await viewModel.cancelReservation(for: reservation.id)
                            }
                        }
                        Button("Cancel", role: .cancel) {

                        }
                    }
                }
            }
            .offset(x: -125, y: 25)
        }
    }
}

#Preview {
    MiniCardWorkshopComponent(reservation: ReservationModel(
        id: UUID(),
        status: .validated,
        workshopID: UUID(),
        workshopName: "DRAWING A STORYBOARD",
        workshopCategory: .drawing,
        workshopStartTime: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 10, minute: 00))!,
        workshopEndTime: calendar.date(from: DateComponents(year: 2026, month: 11, day: 13, hour: 11, minute: 00))!
    ))
    .environment(MyReservationsViewModel())
}
