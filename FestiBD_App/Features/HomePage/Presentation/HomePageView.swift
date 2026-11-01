//
//  HomePageView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct HomePageView: View {
    private var router = Router.shared
    @State private var viewModel = HomePageViewModel()

    var body: some View {
        VStack{
            ScrollView {
                ZStack{
                    HeaderComponentView(headerSize: .Home)
                    VStack{
                        Text("<COMICS ")
                            .font(Font.custom("ComicsTricks", size: 75))
                            .foregroundStyle(.white)
                        Text("FESTIVAL>")
                            .font(Font.custom("ComicsTricks", size: 75))
                            .foregroundStyle(.white)
                            .padding(.horizontal,20)
                        Divider()
                            .frame(minHeight: 6)
                            .overlay(Color.appYellow)
                            .padding(.horizontal,30)
                        HStack(alignment: .firstTextBaseline){
                            Text("PROGRAMME")
                                .font(Font.custom("ComicsTricks", size: 37))
                                .foregroundStyle(.white)
                            Text("2026")
                                .font(Font.custom("CoinyCyrillic", size: 67))
                                .foregroundStyle(.white)
                        }
                    }
                }
                MenuSectionComponent(
                    activeDay: $viewModel.state.activeDay,
                    viewModel: $viewModel
                )
                VStack(spacing: 15){
                    if viewModel.state.workshops.isEmpty {
                        Text("There's no workshops that day")
                            .font(Font.custom("Armata", size: 25))
                            .multilineTextAlignment(.center)
                            .padding(50)
                    } else {
                        ForEach(viewModel.state.workshops) { workshop in
                            Button {
                                router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                            } label: {
                                CardWorkshopComponent(workshopModel: workshop)
                            }
                            .tint(.black)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom,30)
            }
            .ignoresSafeArea()
        }
        .task {
            await viewModel.fetchWorkshops()
        }
    }
}

#Preview {
    HomePageView()
        .environment(Router())
}
