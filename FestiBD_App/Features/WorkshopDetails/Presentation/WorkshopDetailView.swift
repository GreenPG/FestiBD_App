//
//  WorkshopDetailView.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct WorkshopDetailView: View {

    @State var viewModel = WorkshopDetailViewModel()
    @Environment(Router.self) var router
    var workshopID: UUID

    var body: some View {
        VStack {
            if viewModel.state.isWorkshopLoading {
                ProgressView()
            } else {
                GeometryReader { geometry in
                    ScrollView {
                        VStack(spacing: 15){
                            TopComicComponentView()
                                .frame(height: geometry.size.height * 0.25)
                            HStack{
                                MiddleLeftComicComponentView()
                                    .frame(height: geometry.size.height * 0.39)
                                VStack{
                                    MiddleRightTopComicComponentView()
                                        .frame(height: geometry.size.height * 0.19)
                                    MiddleRightBottomComicComponentView()
                                        .frame(height: geometry.size.height * 0.19)
                                }
                            }
                            MiddleBottomComicComponentView()
                                .frame(height: geometry.size.height * 0.25)

                            BottomComicComponentView()
                                .frame(height: geometry.size.height * 0.1)
                        }
                        .padding(10)
                    }
                }
                .alert(
                    viewModel.state.isBooked ? "Reservation Done !" : "Cancellation done",
                    isPresented: $viewModel.state.isSuccessDialogPresented) {
                        Button("Ok", role:.confirm) {
                            viewModel.state.isSuccessDialogPresented = false
                            router.navigateBack()
                        }
                    }
                    .alert(
                        viewModel.state.errorMessage,
                        isPresented: $viewModel.state.isErrorDialogPresented
                    ) {
                        Button("Ok", role: .confirm) {
                            viewModel.state.isErrorDialogPresented = false
                            router.navigateBack()
                        }
                    }
                    .environment(viewModel)
            }
        }
        .task {
            await viewModel.fetchWorkshop(for: workshopID)
            await viewModel.fetchReservationStatus(for: workshopID)
        }
        .toolbarVisibility(.hidden, for: .tabBar)
    }
}

#Preview {
    WorkshopDetailView(
        workshopID: UUID(uuidString: "5F552283-D785-4A0C-9D23-D53003DEDC1E") ?? UUID()
    )
    .environment(Router())
}
